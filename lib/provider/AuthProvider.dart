import 'package:flutter/material.dart';


import '../Utility/Functions.dart';
import '../helpers/ApiHandler.dart';
import '../helpers/Error_Handler.dart';
import '../resources/UrlResources.dart';


class AuthProvider with ChangeNotifier
{
  bool isRegister=false;
  var registerMessage="";
  register(context,params) async
  {
    try
    {
      await ApiHandler.post(UrlResources.REGISTER,body: params)!.then((json){
      });
    }
    on ErrorHandler catch (e)
    {
      Functions.PageRedirection(context, e.message);
    }
  }

  bool isLogin=false;
  var loginMessage="";
  login(context,params) async
  {
    try
    {
      await ApiHandler.post(UrlResources.LOGIN,body: params)!.then((json){
      });
    }
    on ErrorHandler catch (e)
    {
      Functions.PageRedirection(context, e.message);
    }
  }

}