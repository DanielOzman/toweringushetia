import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';


import 'class_builder.dart';
import 'home.dart';
import 'arzi.dart';
import 'beyni.dart';
import 'egikal.dart';
import 'hamishk.dart';
import 'niy.dart';
import 'pyaling.dart';
import 'targim.dart';
import 'thaba.dart';
import 'tsori.dart';
import 'vov.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'EBGaramond',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('Home'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text(
            'Вовнушки',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Vov(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Цори',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Tsori(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Таргим',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Targim(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Эгикал',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Egikal(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Тхаба-Ерды',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Thaba(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Пялинг',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Pyaling(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Бейни',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Beyni(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Ний',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Niy(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Хамишк',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Hamishk(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Эрзи',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: Icon(Icons.location_pin, color: Colors.white),
          page: Arzi(),
        ),
        KFDrawerItem.initWithPage(
          text: Text('О программе', style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: Icon(Icons.info, color: Colors.white),
          page: Home(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('TOWER', style: new TextStyle(fontSize: 17, color: Colors.white)),
                    new SizedBox(height: 2),
                    new Text('INGUSHETIA', style: new TextStyle(fontSize: 15, color: Colors.white70)),
                  ],
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromRGBO(87, 143, 82, 1.0), Color.fromRGBO(
                37, 105, 44, 1.0)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}

