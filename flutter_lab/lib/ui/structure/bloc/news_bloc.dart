import 'dart:async';
import 'dart:convert';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as WebServer;
import 'package:flutter_lab/model/article.dart';

class NewsBloc {

  var ids = [
    19063540,
    19062667,
    19063548,
    19060699,
    19062674,
    19060487,
    19060394,
    19062963,
    19060608,
    19062737,
    19061034,
    19063309,
    19062707,
    19062504,
    19061135,
    19060678,
    19062253,
    19062042
  ];

  var _articles = <Article>[];
  
  final _articleSubject = BehaviorSubject<List<Article>>();
  final _event = StreamController<UpdateNewsEvent>();

  Stream<List<Article>> get articlesStream =>  _articleSubject.stream;
  Sink<UpdateNewsEvent> get updateNewsSink => _event.sink;

  Future<Article> _getArticles(int id) async {
    final response = await WebServer.Client().get('https://hacker-news.firebaseio.com/v0/item/$id.json');
    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      return Article.fromJson(json);
    }
    return null;
  }

  Future<Null> _updateArticles() async {
    print('_articles updating...');
    final futureArticles = ids.map((id) => _getArticles(id));
    final articles = await Future.wait(futureArticles);
    _articles = articles;
  }

  NewsBloc(){
    print('start listener a bloc event.');
    _event.stream.listen(_updateNewsEvent);
  }

  void _updateNewsEvent(NewsBlocEvent event){
    if(event is UpdateNewsEvent){
      _updateArticles().then((_){
        print('New data should increment on articles of the BehaviorSubject.');
        _articleSubject.add(_articles);
      });
    }
  }

  void dispose(){
    _event.close();
    _articleSubject.close();
  }

}

abstract class NewsBlocEvent {

}

class UpdateNewsEvent extends NewsBlocEvent{
  UpdateNewsEvent(){
    print('UpdateNews: Received a call of the StreamController.');  
  }
}
