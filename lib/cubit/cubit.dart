
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karem2/cubit/state.dart';
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(super.initialState);

    logIn({
    required String email,
    required String password,
    required String fcmToken,
    required bool rememberMe,
  }) async {
    emit(AuthLoginLoading());
    // final response = await authRepository.logIn(
    //     email: email,
    //     password: password,
    //     fcmToken: fcmToken,
    //     rememberMe: rememberMe);
   // response.fold(
     // (errModel) {
      //  final errorParsedData = parseErrorMessages(errModel);

        emit(AuthLoginError(
            message: "errModel.message.tr(),"
            // // statusCode: errModel.statusCode,
            // // successfull: errModel.successful,
            // data: errorParsedData
            ));
        return null;
      //},
      (logInModel) => emit(AuthLoginSuccess(token: logInModel.data.token));
    //);
  }}