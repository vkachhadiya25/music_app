import 'package:flutter/cupertino.dart';
import 'package:music_app/screen/home/model/home_model.dart';
import 'package:music_app/utils/json_helper.dart';

class HomeProvider with ChangeNotifier
{
  List<HomeModel> music = [];

  Future<void> getMusicData()
  async {
    JsonHelper jsonHelper = JsonHelper();
    List<HomeModel> l1 = await jsonHelper.musicListToModel();
    music = l1;
    notifyListeners();
  }
}