import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:music_app/screen/home/model/home_model.dart';

class JsonHelper {
  Future<List<HomeModel>> musicListToModel() async {
    var jsonString = await rootBundle.loadString("assets/json/music.json");
    List music = jsonDecode(jsonString);
    List<HomeModel> modelList =
        music.map((e) => HomeModel.mapToModel(e)).toList();
    return modelList;
  }
}
