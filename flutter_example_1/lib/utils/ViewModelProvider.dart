import 'package:flutter/widgets.dart';

class AppModel {
  String singleFieldValue = "Just a single Field";
}

class ViewModelProvider extends InheritedWidget {
  final AppModel model;

  const ViewModelProvider(
      {Key key, @required this.model, @required Widget child})
      : assert(model != null),
        assert(child != null),
        super(key: key, child: child);

  static AppModel of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ViewModelProvider)
              as ViewModelProvider)
          .model;

  @override
  bool updateShouldNotify(ViewModelProvider oldWidget) {
    return model != oldWidget.model;
  }
}
