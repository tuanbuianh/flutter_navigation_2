import 'package:demo_navigate_p2/route_management.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: '/',
      onGenerateRoute: RouteManagement.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'first page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('go to rout'),
              onPressed: (){
                Navigator.of(context).pushNamed('/secondPage', arguments: 'this is a second page',);
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({
    Key key,
    @required this.data,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Route 2'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'second page',
              style: TextStyle(fontSize: 50, backgroundColor: Colors.white,),
            ),
            RaisedButton(
              child: Text('back to route',
              style: TextStyle(color: Colors.red, fontSize: 20, backgroundColor: Colors.white),),
              onPressed: (){
                Navigator.of(context).pushNamed('/firstPage', arguments: 'ahihi first page',);
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }

}




