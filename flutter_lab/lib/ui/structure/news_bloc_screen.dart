import 'package:flutter/material.dart';
import 'bloc/news_bloc.dart';
import 'package:flutter_lab/model/article.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class NewsBlocScreen extends StatefulWidget {
  _NewsBlocScreenState createState() => _NewsBlocScreenState();
}

class _NewsBlocScreenState extends State<NewsBlocScreen> {
  final _newsBloc = NewsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Bloc'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            WidgetHelper.buttonPressed(context, () {
              _newsBloc.updateNewsSink.add(UpdateNewsEvent());
            }),
            Expanded(
              flex: 2,
              child: Container(
                child: StreamBuilder(
                  stream: _newsBloc.articlesStream,
                  initialData: List<Article>(),
                  builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
                    return ListView.builder(
                      itemCount: snapshot.data.length ?? 0,
                      itemBuilder: (context, index) {
                        return Text('${snapshot.data[index].title}');
                      },
                    );
                })
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _newsBloc.dispose();
    super.dispose();
  }
}
