import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Pyaling extends KFDrawerContent {
  Pyaling({
    Key? key,
  });

  @override
  _PyalingState createState() => _PyalingState();
}

class _PyalingState extends State<Pyaling> {

  String playerBackground = 'images/audio_img/pyaling.jpg';
  String bBackground = 'images/pyaling/pyaling-1.jpg';
  String audioasset = "audio/pyaling.mp3";
  String towername = "Пялинг";

  String textTower = "В 2 км от башен Старый Евлой расположен крупный башенный поселок Пялинг (Паьлинг), который состоит из замковых комплексов Верхнего и Нижнего Пялинга. Мы рекомендуем совершить часовую прогулку к башням. "
  "Two kilometers from the towers of Old Yevloy is a large tower settlement of Pyaling, which is comprised by the castle complexes of Upper and Lower Pyaling. We recommend taking an hour tour to the towers."
  "В Верхнем Пялинге сохранилось четыре замковых комплекса, каждый из которых имел свою боевую башню. Три боевые башни с пирамидально ступенчатой крышей достигают высоты 28 метров. На южных фасадных стенах двух башен под балкончиками искусно выложен рисунок в форме креста с «Голгофой». Четвертая боевая башня имела четыре этажа и плоскую крышу с высоким парапетом. Каждый замок также имел жилые башни и каменную высокую оборонительную стену. В черте поселка - 10 полуруинированных коллективных склеповых усыпальниц позднего средневековья. В них были найдены уникальные женские головные уборы курхарсы и другие виды одежды и украшений. На северной окраине поселка Верхний Пялинг, согласно преданию, было воздвигнуто столпообразное святилище, в месте, где молния сразила местного жителя. В верхнем Пялинге жили Полонкоевы, Чаниевы, Дарсиговы, Гайтовы, Цоки- евы и другие ингушские фамилии. Местные мужчины являлись опытными животноводами и пчеловодами, славились своими изделиями из дерева, рога и кости, а девушки были весьма искусными портнихами и золотошвейками."
  "Нижний Пялинг расположен в 150 метрах восточнее Верхнего Пялинга, через речку. Пятиэтажная боевая башня комплекса имела пирамидально-ступенчатую крышу, и, согласно преданиям, была сооружена знаменитыми Ингушскими мастерами-строителями Баркинхоевыми в конце XVI в. Сейчас она разрушена. Сохранились семь жилых башен с различными пристройками, соединенные сложной системой проходов в единый, довольно мощный замковый комплекс позднего средневековья. На наружной стороне одной стены замка вделано каменное изваяние мужской головы. Это очень редкое для местных башенных построек скульптурное изображение отличается изяществом и совершенством. В черте поселка - 3 наземных башнеобразных - склепа с пирамидально-ступенчатой крышей, один наземный склеп-мавзолей, и одно столпообразное святилище, возведенное над родником. В прошлом на южной окраине поселка Нижний Пялинг, на горной лесистой вершине высился крупный позднесредневековый храм-святилище с двускатно-ступенчатой крышей, к нашим дням он не сохранился. В Нижнем Пялинге проживали Евлоевы.";


  List<String> listpaths = [
    "images/pyaling/pyaling-1.jpg",
    "images/pyaling/pyaling-2.jpg",
    "images/pyaling/pyaling-3.jpg",
    "images/pyaling/pyaling-4.jpg",
    "images/pyaling/pyaling-5.jpg",
    "images/pyaling/pyaling-6.jpg",
    "images/pyaling/pyaling-7.jpg",
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