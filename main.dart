import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

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
      home: new MyTabs(),
    );
  }
}

class MyTabs extends StatefulWidget
{
  @override
  MyTabState createState() => new MyTabState();
}

class MyTabState extends State<MyTabs> with SingleTickerProviderStateMixin
{

  TabController tabController;


  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this); // length = no of tabs

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Pages"),
          backgroundColor: Colors.redAccent,
          bottom: new TabBar(
              controller: tabController, tabs: <Tab>[
                new Tab(icon: new Icon(Icons.arrow_drop_down_circle, color: Colors.white,)),
                new Tab(icon: new Icon(Icons.arrow_drop_down_circle, color: Colors.white)),
                new Tab(icon: new Icon(Icons.arrow_drop_down_circle, color: Colors.white)),
          ])),
      body: new TabBarView(
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third()],
        controller: tabController,),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
