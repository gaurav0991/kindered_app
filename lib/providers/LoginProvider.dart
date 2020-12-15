import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class loginProvider with ChangeNotifier {
  bool _isLoadin = false;
  bool _isSuccessfull = true;
  bool getLoading() => _isLoadin;
  bool get successfull => _isSuccessfull;
  Future<void> getOtp(String phonenumber) async {
    print(phonenumber.length);
    String finalphone = "91" + phonenumber;
    Map out = {"phone": finalphone};
    print(out);
    final headers = {'Content-Type': 'application/json'};

    var data = await http.post("https://app.closecheckout.com/api/login-otp",
        headers: headers, body: json.encode(out));
    var d = await jsonDecode(data.body);
    print(d);
    if (data.statusCode == 200) {
      _isLoadin = false;

      if (d["done"] == false) {
        _isSuccessfull = false;
        notifyListeners();
        return;
      }
      _isSuccessfull = true;
      notifyListeners();
    } else {
      _isLoadin = false;
      _isSuccessfull = false;
      notifyListeners();
    }
  }

  Future<void> verifyOtp(String phonenumber, String otp) async {
    print(otp);
    var data = await http.post("https://app.closecheckout.com/api/login",
        body: {"phone": phonenumber, "otp": otp});
    var d = await jsonDecode(data.body);
    print(d);
    if (data.statusCode == 200) {
      _isLoadin = false;
      notifyListeners();
    } else {
      _isLoadin = false;
      notifyListeners();
    }
  }
}
