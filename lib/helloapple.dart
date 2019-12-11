import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Welcome to Flutter',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Welcome to Flutter'),
        ),
        child: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}