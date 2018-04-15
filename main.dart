import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>
      {
        "/SecondPage": (BuildContext context) => new SecondPage() // we have to define it to route to new page, home page is defined automatically
      },
    );
  }
}

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Navigation"), backgroundColor: Colors.blueGrey),
       body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.favorite, color: Colors.blue,),
                  iconSize: 70.0,
                  onPressed: (){Navigator.of(context).pushNamed("/SecondPage");}),
              new Text("Home")
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"), backgroundColor: Colors.blueGrey),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.gps_fixed, color: Colors.redAccent,),
                  iconSize: 70.0,
                  onPressed: null),
              new Text("Home")
            ],
          ),
        ),
      ),
    );
  }
}
