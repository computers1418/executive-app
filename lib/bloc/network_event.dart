part of 'network_bloc.dart';

@immutable
sealed class NetworkEvent {}

class SendMessage extends NetworkEvent {
  final String phoneNumber;
  final String email;

  final bool isCall;
  final bool isSms;
  final bool isMail;

  SendMessage({ required this.phoneNumber, required this.email, required this.isCall, required this.isSms, required this.isMail });
}

class GetReport extends NetworkEvent {}
