
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:executive_app/constants/constants.dart';
import 'package:executive_app/modals/report_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {

  NetworkBloc() : super(AuthInitial()) {
    on<SendMessage>(_onSendMessage);
    on<GetReport>(_onGetReport);
  }

  Future<void> makeCall(String path, receiver)async{
    var dio = Dio();

    dio.options.baseUrl = apiBaseUrl;
    dio.options.contentType = 'application/json'; 
    await dio.post(path, data: {
      "receivers": receiver
    });

    return;
  }

  void _onSendMessage(SendMessage event, Emitter emit)async{
    try{  

      emit(Loading());
      
      var phoneNumber = event.phoneNumber;
      var email = event.email;

      await Future.wait<void>([
        if(event.isSms) makeCall("sms", phoneNumber), 
        if(event.isCall) makeCall("voice-call", phoneNumber),
        if(event.isMail) makeCall("email", email)
      ]);

      emit(Success());
    }catch(err){
      emit(Error(error: err.toString()));
    }
  }

  void _onGetReport(GetReport event, Emitter emit)async{
    try{
      emit(Loading());

      var dio = Dio();

      dio.options.baseUrl = apiBaseUrl;
      dio.options.contentType = 'application/json'; 
      String currentDate = getCurrentDate();
      String pastDate = getPastDate(30);

      var resp = await dio.post("voice/report", data: {
        "startDate": pastDate,
        "toDate": currentDate
      });
      
      var data = resp.data['data']['response'];
      var logs = data['reports_dlrList'] as List;
      var reports = logs.map((e) => ReportData.fromMap(e)).toList();

      emit(ReportsFetched(reports: reports));
    }catch(err){
      emit(Error(error: err.toString()));
    }
  }

  String getCurrentDate() {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    DateTime now = DateTime.now();
    return dateFormat.format(now);
  }

  String getPastDate(int daysAgo) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    DateTime now = DateTime.now();
    DateTime pastDate = now.subtract(Duration(days: daysAgo));
    return dateFormat.format(pastDate);
  }
}
