import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Def extends KFDrawerContent {
  Def({
    Key? key,
  });

  @override
  _DefState createState() => _DefState();
}

class _DefState extends State<Def> {

  String playerBackground = 'images/audio_img/vov.jpg';
  String bBackground = 'images/vov/vov-1.jpg';
  String audioasset = "audio/vov.mp3";
  String towername = "Вовнушки";

  String textTower = "Text about tower complex";

  List<String> listpaths = [
    "images/vov/vov-1.jpg",
    "images/vov/vov-2.jpg",
    "images/vov/vov-3.jpg",
    "images/vov/vov-4.jpg",
    "images/vov/vov-5.jpg",
    "images/vov/vov-6.jpg",
    "images/vov/vov-7.jpg",
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