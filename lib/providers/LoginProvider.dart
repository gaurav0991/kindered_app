import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class loginProvider with ChangeNotifier {
  bool _isLoadin = false;
  bool getLoading() => _isLoadin;
  void getOtp() async {
    _isLoadin = true;
    print(_isLoadin);
    notifyListeners();
    _isLoadin = false;
    notifyListeners();
  }
}
