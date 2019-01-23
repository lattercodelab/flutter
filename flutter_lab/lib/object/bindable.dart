import 'package:flutter/material.dart';
import 'package:flutter_lab/object/bindmodel.dart';

class Bindable extends InheritedWidget{
  
  final BindModel model;

  const Bindable({Key key, this.model}): super(key : key);

  static BindModel of(BuildContext context) => (context.inheritFromWidgetOfExactType(Bindable) as Bindable).model;

  @override
  bool updateShouldNotify(Bindable oldWidget) {
    return model != oldWidget.model;
  }

}