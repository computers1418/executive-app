part of 'network_bloc.dart';

@immutable
sealed class NetworkState {}

final class AuthInitial extends NetworkState {}

class Loading extends NetworkState {}

class Success extends NetworkState {}

class Error extends NetworkState {
  final String error;

  Error({required this.error});
}