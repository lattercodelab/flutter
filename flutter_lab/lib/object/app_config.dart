import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget{

  final String appName;

  const AppConfig({this.appName, Widget child}): super(child : child);

  static AppConfig of(BuildContext context) => context.inheritFromWidgetOfExactType(AppConfig);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
  
}