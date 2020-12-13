import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:kinderedecommerce/models/exploreModel.dart';

class exploreProvider with ChangeNotifier {
  bool _isLoading = true;
  List<exploreModel> _explore = [];
  List<exploreModel> get exploreData => _explore;
  bool get isloading => _isLoading;
  void getData() async {
    _explore = [];
    var data =
        await http.get("https://demoapp.letsdooit.in/api/get-explorer-data");
    var d = await jsonDecode(data.body);
    List da = d["explorerData"];
    for (int i = 0; i < d.length; i++) {
      _explore.add(exploreModel.fromJson(da[i]));
    }
    print(_explore.length);
    _isLoading = false;
    notifyListeners();
  }
}
