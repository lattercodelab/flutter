class Album{

  final List<Photo> photos;

  Album({this.photos});

  factory Album.fromJson(List<dynamic> json){
    List<Photo> photos = List();
    photos = json.map((f) => Photo.fromJson(f)).toList();
    return Album(
      photos: photos
    );
  }

}

class Photo{

  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json){
    return Photo(
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

  Map<String, dynamic> toJson() =>{
    'title' : title,
    'url' : url,
    'thumbnailUrl' : thumbnailUrl
  };

}