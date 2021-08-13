import 'package:flutter/material.dart';
import 'home.dart' as home;
import 'inputdata.dart' as input;
import 'listinfo.dart'as list;
import 'detailinfo.dart'as detai;
import 'about.dart' as about;

void main() {

runApp(new MaterialApp(
title: "Home",
home: new Badan(),
));

}

class Badan extends StatefulWidget {
  //const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Badan> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
    void initState() {
      controller = new TabController(vsync: this, length: 5);
      super.initState();
    }
    @override
      void dispose() {
        controller.dispose();
        super.dispose();
      }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        title: new Text ("Kontak Saat Ini"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons. home),text: "home",),
            new Tab(icon: new Icon(Icons. add_box), text: "input data",),
            new Tab(icon: new Icon(Icons. all_inbox),text: "list informasi",),
            new Tab(icon: new Icon(Icons. article),text: "detail informasi"),
            new Tab(icon: new Icon(Icons. assignment_late),text: "about aplikasi",),
          ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.Beranda(),
          new input. InputData(),
          new list.Listinformasi(),
          new detai.Detail(),
          new about.MyApp(),

        ],
        )
    );
  }
}