import 'package:hive/hive.dart';

class DB {
  static Box box;
  static const String boxName = 'Closely';
  static const String name = 'name'; //string
  static const String email = 'email'; //string
  static const String phone = 'phone'; //string
  static const String gender = 'gender'; //string
  static const String token = 'token'; //string
//  temp storage for search result
  static const String search = 'search'; //string
  static const String isSignIn = 'isSignIn'; //bool
  ///  for getting user details in firebase database
  static const String uniqueId = 'uniqueId'; //string
  static const String dateOfBirth = 'dateOfBirth'; //string

//
}
