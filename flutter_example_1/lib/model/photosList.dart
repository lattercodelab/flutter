import 'photo.dart';

class PhotosList {
    final List<Photo> photos;

    PhotosList({this.photos});

    factory PhotosList.fromJson(List<dynamic> parsedJson) {
      List<Photo> photos = List<Photo>();
      photos = parsedJson.map((i) => Photo.fromJson(i)).toList();
      return PhotosList(photos: photos);
    }

//    Future<User> getUser() async {
//      final response = await http.get("https://randomuser.me/api/");
//      final responseJson = json.decode(response.body);
//      return User.fromJson(responseJson);
//    }
}