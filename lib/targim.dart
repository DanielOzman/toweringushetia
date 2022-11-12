import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Targim extends KFDrawerContent {
  Targim({
    Key? key,
  });

  @override
  _TargimState createState() => _TargimState();
}

class _TargimState extends State<Targim> {

  String playerBackground = 'images/audio_img/targim.jpg';
  String bBackground = 'images/targim/targim-1.jpg';
  String audioasset = "audio/targim.mp3";
  String towername = "Таргим";

  String textTower = "Таргим - крупный башенный поселок на правом берегу Ассы. Здесь сохранились четыре пятиэтажные боевые башни, две четырехэтажные полубоевые и более 20 жилых строений с разнообразными каменными пристройками. Каждая боевая и полубоевая башня размещалась в собственном замковом комплексе. "
  "К северу от Таргима разместился «Городок мертвых» из более десятка склеповых могильников. В их числе четыре высокие башнеобразные гробницы, а остальные двухэтажные с двускатно-ступенчатой крышей. Ряд из них богато декорирован орнаментами из геометрических фигур. На южной окраине могильника раньше стоял наземный склеп с открытой с фасада поминальной камерой. На северной окраине могильника сохранился ядрообразный мавзолей с округлым основанием и купольно-ступенчатым покрытием. Рядом с ним стоял аналогичный мавзолей, но к нашим дням он разрушен. По преданиям, оба строения были торжественно возведены над могилами местных героев-военачальников во второй половине XVIII в."
  "К югу от Таргима на территории мусульман- ского кладбища располагаются наземные кол- лективные склеповые усыпальницы XVI-XVIII вв и полуподземные гробницы XIII-XV вв., в одной из них был найден сероглиняный кувшин с надписью «Таргем». На территории склеповых могильников Таргима также были построены три столпообразных святилища."
  "Напротив поселка Таргим, на противоположном склоне берега Ассы можно увидеть руины циклопических строений и святилища мавзолея Ауша-Сел. Некогда мавзолей достигал в высоту трех метров. По преданию, некто Ауш был убит молнией громовержеца Сели, в па- мять об этом был поставлен мавзолей. Внутри памятника обнаружены останки одного усопшего и 5 железных наконечников стрел."
  "Из Таргима вышли ингушские фамилии Арчаковы, Бековы, Гарбаковы, Мальсаговы, Плиевы, Оскановы, Озиевы, Гойговы, Кулбужевы, Угурчиевы, Чапановы, Тимурзиевы, Султыговы, Тутаевы, Гайсановы, Погоровы и другие. Местные мужчины на протяжении многих веков заслуженно считались многоопытными военачальниками, предводителями военных дружин (например, Мальсаг, Гарбак, Гойг, Бек, Арчак — родоначальники известных ингушских фамилий), обладавшие передовыми для своего времени образцами вооружения.";


  List<String> listpaths = [
    "images/targim/targim-1.jpg",
    "images/targim/targim-2.jpg",
    "images/targim/targim-3.jpg",
    "images/targim/targim-4.jpg",
    "images/targim/targim-5.jpg",
    "images/targim/targim-6.jpg",
    "images/targim/targim-7.jpg",
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