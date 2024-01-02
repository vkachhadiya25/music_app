class HomeModel {
  String? song, album;
  DataModel? dataModel;
  List<dynamic>? singerList = [];


  HomeModel({
    this.album,
    this.song,
    this.dataModel,
    this.singerList
  });

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
      album: m1['Album'],
      song: m1['song'],
      dataModel: DataModel.mapToModel(m1),
      singerList: m1['singer'],
    );
  }
}

class DataModel {
  String? image, url;

  DataModel({this.image, this.url});

  factory DataModel.mapToModel(Map m1) {
    return DataModel(image: m1['image'], url: m1['url']);
  }
}


