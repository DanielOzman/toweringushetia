import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Niy extends KFDrawerContent {
  Niy({
    Key? key,
  });

  @override
  _NiyState createState() => _NiyState();
}

class _NiyState extends State<Niy> {

  String playerBackground = 'images/audio_img/niy.jpg';
  String bBackground = 'images/niy/niy-1.jpg';
  String audioasset = "audio/niy.mp3";
  String towername = "Ний";

  String textTower = "Ний (Нюй, Ный, Нуй) - крупный башенный поселок в 2 км к востоку от Пялинга. В пяти замках поселка сохранились четыре боевые башни, одна полубоевая постройка и более десятка жилых строений с различными пристройками. Боевые башни поселка отличаются разнообразием, каждая постройка имеет свои индивидуальные черты. Одна тридцатиметровая башня имеет высоту шесть этажей, три пятиэтажные. Стены одной башни кверху сильно суживаются, до 13 градусов. У другой башни машикули-балкончики опираются сразу на з каменных консоля, что является редкостью для Ингушетии (у всех остальных башен их обычно два). На южных стенах всех боевых стрельниц искусно выложены рисунки в форме крупного креста с «Голгофой». "
  "Полубоевая четырехэтажная башня, как и другие жилые постройки, имела плоскую крышу. Каждый замок располагал высокой оборонительной стеной."
  "В черте поселка Ний разбросаны 2 подземные, 6 полуподземные и 5 наземных коллективных склеповых гробниц периода позднего средневековья, а также наземный склеп с открытой с фасада поминальной камерой (сейчас он полуразрушен). Сохранились два столпообразных святилища. Одно из них, расположенное в 500 метрах восточнее поселка, на берегу речки ниже автодороги, зарисовал В.Ф Миллер в 1886 году, благодаря чему можно увидеть первоначальный облик памятника."
  "В 800 метрах к востоку от башен, на холме выше автодороги можно увидеть крупный камень с петроглифом солярным знаком."
  "В Ний проживали Евлоевы (Абадиевы, Саговы и др.).";


  List<String> listpaths = [
    "images/niy/niy-1.jpg",
    "images/niy/niy-2.jpg",
    "images/niy/niy-3.jpg",
    "images/niy/niy-4.jpg",
    "images/niy/niy-5.jpg",
    "images/niy/niy-6.jpg",
    "images/niy/niy-7.jpg",
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