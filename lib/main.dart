import 'package:flutter/material.dart';

void main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '简历专家',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResumeRootPage(title: '简历专家'),
    );
  }
}

class ResumeRootPage extends StatefulWidget {
  ResumeRootPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResumeRootPageState createState() => _ResumeRootPageState();
}

class _ResumeRootPageState extends State<ResumeRootPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '根页面',
            ),
          ],
        ),
      ),
    );
  }
}
