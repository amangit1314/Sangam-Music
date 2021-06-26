import 'package:get/get.dart';
import 'package:sangam/models/user.dart';

class UserController extends GetxController {
  Rx<UserModel> _userModel = UserModel(email: '', uid: '', name: '').obs;

  UserModel get user => _userModel.value;

  set user(UserModel value) => this._userModel.value = value;

  void clear() {
    _userModel.value = UserModel(email: '', uid: '', name: '');
  }
}
