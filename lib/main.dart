import 'package:flutter/material.dart';
import 'package:resume_app/root_page.dart';

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
