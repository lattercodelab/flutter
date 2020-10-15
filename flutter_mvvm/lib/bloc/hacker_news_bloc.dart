import 'bloc.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../repository/story.dart';

class HackerNewsBloc extends Bloc {
  StreamController<List<Story>> _topStoriesStreamController =
      StreamController();

  Stream<List<Story>> get topStories => _topStoriesStreamController.stream;

  var _client = http.Client();

  void getNews() {}

  @override
  void dispose() {
    _topStoriesStreamController.close();
  }
}
