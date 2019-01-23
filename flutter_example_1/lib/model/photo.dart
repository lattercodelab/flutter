class Photo {
  final String id;
  final String title;
  final String url;

  Photo({this.id, this.title, this.url});

  factory Photo.fromJson(Map<String, dynamic> parsedJson) {
    return Photo(
        id: parsedJson['id'].toString(),
        title: parsedJson['title'],
        url: parsedJson['url']);
  }
}
