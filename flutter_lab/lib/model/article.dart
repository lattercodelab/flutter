class Article{

  final String title;
  final String url;
  final int score;

  Article({this.title, this.url, this.score});

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      title : json['title'].toString(),
      url: json['url'],
      score : json['score']
    );
  }

  Map<String, dynamic> toJson() => {
    'title' : title,
    'url' : url,
    'score' : score
  };

}