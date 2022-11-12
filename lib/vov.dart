import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Vov extends KFDrawerContent {
  Vov({
    Key? key,
  });

  @override
  _VovState createState() => _VovState();
}

class _VovState extends State<Vov> {

  String playerBackground = 'images/audio_img/vov.jpg';
  String bBackground = 'images/vov/vov-1.jpg';
  String audioasset = "audio/vov.mp3";
  String towername = "Вовнушки";

  String textTower = "Вовнушки - величественный башенный комплекс в Гулойхийском ущелье, построенный на остроконечных вершинах обрывистых скальных утесов и состоящий из двух отдельных неприступных замков, соединявшихся в древности подвесным мостиком. "
  "В переводе с ингушского ВӀовнашке означает «место боевых башен». Боевые башни были четырехъярусные, с узкими бойницами, высоким парапетом и плоской крышей. Они наглядно иллюстрируют понятие «твердыня»: огромные каменные сооружения, твердо стоящие на скальном основании. Подступы к башням и жилым пристройкам преграждали мощные крепостные стены, которые воспринимаются как естественная часть горы."
  "Согласно радиоуглеродному исследованию, боевая башня Вовнушек была построена в 1536-1645 гг. По преданиям, комплекс был основан предками ингушской фамилии Оздоевы. Праправнук легендарного Маго, Цикким, перешел на правый берег реки Асса вверх по руслу реки Гулой-хи в XIV-XV вв, и заложил первую боевую башню Вовнушек в западном замке. Рядом к отвесной скале сын Циккима Эзди пристроил жилую башню. Самый величественный восточный замок воздвигнул внук Циккима, сын Эзди Оздо. Всего фамилиями из рода Оздоевы (Цикмабухоевы, Имагожевы, Гудиевы и др.) в Гулойхийском ущелье было построено более 25 башенных комплексов, из Вовнушек началось их расселение."
  "В черте Вовнушек расположено несколько солнечных склеповых могильников и мусульманских мавзолеев. Особый интерес представляет группа рядом расположенных памятников: одиночного склепа, столпообразного святилища и ядрообразного мавзолея. В 2017 году была проведена их реставрация."
  "Вовнушки являются символом всей Ингушетии, красоты и величия ингушской башенной архитектуры. В 2008 году вовнушки стали финалистом конкурса «7 чудес России» как одна из самых удивительных рукотворных достопримечательностей страны. В 2010 году Центральный банк России выпустил памятную монету, посвященную вовнушкам. в 2017 году Федеральным агентством связи и АО «Марка» выпущена почтовая карточка с изображением вовнушек."
  "Сейчас под башнями оборудованы беседки для отдыха, теперь это излюбленное место туристов."
  "Одно из преданий о Вовнушках рассказывает о мужестве и силе духа ингушских женщин. В прошлом между замками комплекса был 60-ти метровый подвесной мост. Однажды, когда враги окружили один замок и начали его осаду, обитатели по подвесному мосту через ущелье перебрались в башни напротив. В ходе боя верёвочный мост был повреждён, но женщина, находившаяся в осаждённой башне, несмотря на грозившую ей опасность, спасла нескольких младенцев, перетаскивая люльки с детьми в соседнюю башню.";

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