

import 'package:get/get.dart';
import 'package:shop_app_project/users/model/user.dart';
import 'package:shop_app_project/users/userPreferences/user_preferences.dart';

class currentUser extends GetxController
{
  Rx<User> _currentUser = User(0, '', '', '').obs;
  User get user  => _currentUser.value;
  getUserInfo() async
  {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo();
    _currentUser.value = getUserInfoFromLocalStorage!;
  }  
}