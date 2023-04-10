import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

class RememberUserPrefs
{
  //save-remeber User-info
  static Future<void> storeUserInfo(User userinfo) async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userinfo.toJson());
    await preferences.setString("currentUser", userJsonData);
  }

  //get-read
  static Future<User?> readUserInfo() async  
  {
    User? currentUserInfo;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userInfo = preferences.getString("currentUser");
    if(userInfo!=null)
    {
      Map<String,dynamic>  userDataMap = jsonDecode(userInfo);
      currentUserInfo = User.fromJson(userDataMap);
    } 
    return currentUserInfo;
  }

  static Future<void> removeUserInfo() async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();  
    await preferences.remove("");
  }
}


