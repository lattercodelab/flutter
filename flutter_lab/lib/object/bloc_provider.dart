import 'package:flutter/material.dart';
import 'package:flutter_lab/object/bloc.dart';

class BlocProvider extends InheritedWidget{
  
  final Bloc bloc;

  const BlocProvider({Key key, this.bloc}): super(key : key);

  // static BlocProvider of(BuildContext context) => (context.inheritFromWidgetOfExactType(BlocProvider) as Bindable).model;

  @override
  bool updateShouldNotify(BlocProvider oldWidget) {
    return bloc != oldWidget.bloc;
  }

}