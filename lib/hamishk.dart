import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Hamishk extends KFDrawerContent {
  Hamishk({
    Key? key,
  });

  @override
  _HamishkState createState() => _HamishkState();
}

class _HamishkState extends State<Hamishk> {

  String playerBackground = 'images/audio_img/hamishk.jpg';
  String bBackground = 'images/hamishk/hamishk-1.jpg';
  String audioasset = "audio/hamishk.mp3";
  String towername = "Хамишки";

  String textTower = "Хамишки (Хамышки, Хамышк, Хьамашке) - башенный поселок в 1 км к востоку от села Ляжги, состоящий из трёх замковых комплексов, большая часть которых разрушена. К ХХІ веку частично сохранились две боевые башни. Одну из них построил знаменитый ингушский зодчий Ханой Хинг из Хяни, но она осталась незавершенной из-за внезапной смерти заказчика. Сейчас обе башни восстановлены. В Хамишках жили Хамышкхоевы, Патиевы, Дидиговы, Чилиевы и др. Здесь располагалась кузница и производились качественные разнообразные ремесленные изделия. Искусным потомственным оружейником Темархой Патиевым изготовлялись разносортные образцы клинкового и огнестрельного оружия.";

  List<String> listpaths = [
    "images/hamishk/hamishk-1.jpg",
    "images/hamishk/hamishk-2.jpg",
    "images/hamishk/hamishk-3.jpg",
    "images/hamishk/hamishk-4.jpg",
    "images/hamishk/hamishk-5.jpg",
    "images/hamishk/hamishk-6.jpg",
    "images/hamishk/hamishk-7.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
          slivers: <Widget>[
      //App part
      SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.width,
      pinned: true,
      snap: false,
      floating: false,
      backgroundColor: Color.fromRGBO(126, 168, 126, 1),
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            bBackground,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  new IconButton(
                    icon: Icon(Icons.image, size: 30, color: Colors.white,), onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GalleryPage(
                          listPaths: listpaths, towerName: towername,
                        )));  },),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child:
                    new IconButton(
                      icon: Icon(Icons.play_circle, size: 30, color: Colors.white,), onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imgPath: playerBackground, audioPath: audioasset, towerName: towername,
                          )));
                    },),),
                ],
              ),
              Container(height: 50,),
            ], ) ),
      toolbarHeight: 80,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: widget.onMenuPressed,
      ),

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          child: Text(towername, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          width: double.maxFinite,
          padding: EdgeInsets.only(top:5, bottom: 10, left: 50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),),
    ),
            // Text page
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(textTower,style: TextStyle(color: Colors.black54,fontSize: 20.0), textAlign: TextAlign.justify,
                      ) ) ],
              ), ),
     ], ),
    ); }
}