part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class CheckAuth extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthSuccessful extends AuthState {
  final String token;

  AuthSuccessful(this.token);

  @override
  List<Object?> get props => [token];
}

class Registered extends AuthState {
  @override
  List<Object?> get props => [];
}

class Unauthenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthLoading extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthError extends AuthState {
  final String error;

  AuthError(this.error);

  @override
  List<Object?> get props => [error];
}
