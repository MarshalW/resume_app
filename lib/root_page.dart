import 'package:flutter/material.dart';
import 'resume_view.dart';
import 'templates_view.dart';
import 'about_view.dart';
//import 'dart:developer';
//import 'package:flutter/foundation.dart';

class ResumeRootPage extends StatefulWidget {
  ResumeRootPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResumeRootPageState createState() => _ResumeRootPageState();
}

class _ResumeRootPageState extends State<ResumeRootPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    ResumeView(),
    TemplatesView(),
    AboutView()
  ];

  void onTabTapped(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
//    log('>>>>>>>build root');
//    debugPrint('build root view ${_children[0]}');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:_children[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('我的简历'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('选择模版'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('关于')
          )
        ],),
    );
  }
}