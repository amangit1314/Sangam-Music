part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthInitEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class AuthRegisterEvent extends AuthEvent {
  final String username;
  final String email;
  final String password;

  AuthRegisterEvent({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [username, email, password];
}

class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;

  const AuthLoginEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}

class CheckAuthentication extends AuthEvent {}

class AuthLoadingEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class AuthErrorEvent extends AuthEvent {
  final String message;

  const AuthErrorEvent(this.message);

  @override
  List<Object?> get props => [message];
}

class AuthLoggedOut extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class AuthForgotPasswordEvent extends AuthEvent {
  final String email;
  final String password;

  AuthForgotPasswordEvent(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class AuthVerifyEmailEvent extends AuthEvent {
  final String email;

  AuthVerifyEmailEvent(this.email);

  @override
  List<Object?> get props => [email];
}
