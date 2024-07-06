
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {

  NetworkBloc() : super(AuthInitial()) {
    on<SendMessage>(_onSendMessage);
  }

  Future<void> makeCall(String path, receiver)async{
    var dio = Dio();

    dio.options.baseUrl = "http://13.127.57.197/api/";
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

}
