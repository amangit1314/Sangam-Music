import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is AuthInitial) {
        emit(AuthInitial());
      } else if (event is CheckAuthentication) {
        emit(CheckAuth());
      } else if (event is AuthLoadingEvent) {
        emit(AuthLoading());
      } else if (event is AuthRegisterEvent) {
        await _registerUser(event, emit);
      } else if (event is AuthLoginEvent) {
        await _loginUser(event, emit);
      } else if (event is AuthSuccessful) {
      } else if (event is AuthVerifyEmailEvent) {
        await _verifyEmail(event, emit);
      } else if (event is AuthForgotPasswordEvent) {
        await _forgotPassword(event, emit);
      } else if (event is AuthErrorEvent) {
        emit(AuthError(event.message));
      } else if (event is AuthLoggedOut) {
        authRepository.logOut();
        log('AcessToken & RefreshToken both are cleared');
        emit(Unauthenticated());
      }
    });
  }

  Future _registerUser(AuthRegisterEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        await authRepository
            .register(
                email: event.email,
                password: event.password,
                username: event.username)
            .then(
          (value) {
            emit(Registered());
            log('successfully registered 😎');
          },
        );
      } else {
        emit(AuthError('Enter all missing details to register'));
        log('Enter all missing details to register');
      }
    } catch (e) {
      emit(
        AuthError('Failed to register becuase of ERROR: $e'),
      );
      log('Failed to register becuase of ERROR: $e');
    }
  }

  Future _loginUser(AuthLoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        await authRepository
            .login(email: event.email, password: event.password)
            .then(
          (value) {
            if (value.isNotEmpty) {
              emit(AuthSuccessful(value));
              log('successfully authenticated 😁, StatusCode: $value');
            }
            // else if (value.isNotEmpty) {
            //   emit(AuthError(
            //       'You are not allowed to login, because your email is not verified'));
            //   log('you are not allowed to login, because your email is not verified');
            // }
          },
        ).catchError(
          (err) {
            emit(AuthError('Failed to login: ERROR $err'));
            log('Failed to login: ERROR $err');
          },
        );
      }
    } catch (e) {
      emit(AuthError('Failed to authenticate, ERROR: ${e.toString()}'));
      log('Failed to login the user in the app, ERROR: ${e.toString()}');
    }
  }

  Future _forgotPassword(
      AuthForgotPasswordEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      // final result = await authRepository.forgotPassword(
      //     email: event.email, password: event.password);
      emit(AuthSuccessful('result'));
    } catch (e) {
      emit(AuthError(e.toString()));
      log(e.toString());
    }
  }

  Future _verifyEmail(
      AuthVerifyEmailEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      // final result = await authRepository.verifyEmail();
      emit(AuthSuccessful('result'));
    } catch (e) {
      emit(AuthError(e.toString()));
      log(e.toString());
    }
  }
}
