import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


class CommonMethods
{
  checkConnectivity(BuildContext context) async
  {
    var connectionResult = await Connectivity().checkConnectivity();

    // check if phone is connected to wifi or cellular data
    if(connectionResult != ConnectivityResult.mobile &&
        connectionResult != ConnectivityResult.wifi)
    {
      if(!context.mounted) return;
      displaySnackBar("Your Internet is not working! Check Your Connection and Try Again.", context);
    }
  }

  // for displaying the message
  displaySnackBar(String messageText, BuildContext context)
  {
    var snackBar = SnackBar(content: Text(messageText));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
