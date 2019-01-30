import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  @override
  _PlaygroundScreenState createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Playground")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text("Test Object"),
            onPressed: (){
              TestObject.valueOf(1);
              assert(int.parse('42') == 42);
              assert(int.parse('42', radix: 16) == 66);
              assert(123.456.toStringAsFixed(2) == '123.46');
              assert(123.456.toStringAsPrecision(2) == '1.2e+2');
              assert(double.parse('1.2e+2') == 120.0);

              // Check whether a string contains another string.
              assert('Never odd or even'.contains('odd'));

              // Does a string start with another string?
              assert('Never odd or even'.startsWith('Never'));

              // Does a string end with another string?
              assert('Never odd or even'.endsWith('even'));

              // Find the location of a string inside a string.
              assert('Never odd or even'.indexOf('odd') == 6);

              // Grab a substring.
              assert('Never odd or even'.substring(6, 9) == 'odd');

              // Split a string using a string pattern.
              var parts = 'structured web apps'.split(' ');
              assert(parts.length == 3);
              assert(parts[0] == 'structured');

              // Get a UTF-16 code unit (as a string) by index.
              assert('Never odd or even'[0] == 'N');

              // Use split() with an empty string parameter to get
              // a list of all characters (as Strings); good for
              // iterating.
              for (var char in 'hello'.split('')) {
                print(char);
              }

              // Get all the UTF-16 code units in the string.
              var codeUnitList = 'Never odd or even'.codeUnits.toList();
              print("$codeUnitList[0]");
              assert(codeUnitList[0] == 78);
              print("${'  '.isNotEmpty}");
              print("${'  '.trim().isNotEmpty}");

              var regex = RegExp('NAME');
              var greetingTemplate = 'Hello, NAME!';
              var greeting = greetingTemplate.replaceAll(regex, 'Bob');
              print("$greeting");
              // greetingTemplate didn't change.
              assert(greeting != greetingTemplate);

              // Here's a regular expression for one or more digits.
              var numbers = RegExp(r'\d+');

              var allCharacters = 'llamas live fifteen to twenty years';
              var someDigits = 'llamas live 15 to 20 years';

              // contains() can use a regular expression.
              assert(!allCharacters.contains(numbers));
              assert(someDigits.contains(numbers));

              // Replace every match with another string.
              var exedOut = someDigits.replaceAll(numbers, 'XX');
              print("$exedOut");
              assert(exedOut == 'llamas live XX to XX years');

              RegExp exp = new RegExp(r"(\w+)");
              String str = "Parse my string";
              Iterable<Match> matches = exp.allMatches(str);
              for(var m in matches){
                print("Match : ${m.group(0)}");
              }

              // Future.forEach(matches, (Match v){
              //   return "v.group(0)";
              // }).then((match) => print("match : $match"));
              
              var sb = StringBuffer();
              sb..write('Use a StringBuffer for ')
                ..writeAll(['efficient', 'string', 'creation'], ' ')
                ..write('.');

              var fullString = sb.toString();
              print("$fullString");

              assert(fullString ==
                  'Use a StringBuffer for efficient string creation.');

            },
          )
        ],
      ),
    );
  }
}

class TestObject {
  
  final int testValue;

  TestObject({this.testValue});

  TestObject.valueOf(int value) : this.testValue = value {
      if(value == 1){
        print("value = 1");
      }
  }
}