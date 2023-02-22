import 'package:flutter/material.dart';
import '../resources/StyleResources.dart';
import '../view/sportson/NoInternet.dart';
import '../view/sportson/SupportScreen.dart';

class Functions
{
  static bool isEmail(String em) {
    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }
  // Redirect to page
  static void PageRedirection(context,error)
  {
    if(error=="Internet Connection Failure")
    {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> NoInternet())
      );
    }
    else
    {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> SupportScreen())
      );
    }
  }

//  Snackbar

  static ShowSnackbar(context,_scaffoldKey,message,buttontext)
  {
    var snackBar = SnackBar(
      content: Text(message),
      backgroundColor: (Colors.black12),
      action: SnackBarAction(
        label: buttontext,
        textColor: StyleResources.GreenColor,
        onPressed: () {
          _scaffoldKey.currentState.removeCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}