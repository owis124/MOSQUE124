
abstract class AuthState {}
 
class AuthLoginInitial extends AuthState {}

class AuthLoginLoading extends AuthState {}

class AuthLoginSuccess extends AuthState {
  final String token;
  AuthLoginSuccess({required this.token});
}

class AuthLoginError extends AuthState {
  final String message;
  final dynamic data;
  AuthLoginError({required this.message, this.data});
}