import 'dart:ffi';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey{lang}
class SharedPrefController{

  static final  SharedPrefController _instance=
  SharedPrefController._internal();

  late SharedPreferences _sharedPreferences ;


  SharedPrefController._internal();
  factory SharedPrefController(){
    return _instance;
  }


   Future <void>  initSharedPref () async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }



Future<bool>changeLanguage({required String language}) async{

  return await _sharedPreferences.setString(
      PrefKey.lang.toString(),language);
}

String get language =>_sharedPreferences.getString(PrefKey.lang.toString())??'en';

}

