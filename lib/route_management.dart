import 'package:demo_navigate_p2/main.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class RouteManagement{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/secondPage':
        if(args is String){
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
            ),
          );
        }
        return _errorRoute();
      case '/firstPages':
        if(args is String){
          return MaterialPageRoute(
            builder: (_) => FirstPage(
            ),
          );
        }
        return _errorRoute();
        default:
          return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(appBar: AppBar(
        title: Text('Error Route'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text('No data ahihi',
          style: TextStyle(color: Colors.red, fontSize: 50, fontFamily: String.fromCharCode(1), backgroundColor: Colors.cyan),
        ),
      ),);
    });
  }
}
