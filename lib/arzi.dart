import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Arzi extends KFDrawerContent {
  Arzi({
    Key? key,
  });

  @override
  _ArziState createState() => _ArziState();
}

class _ArziState extends State<Arzi> {

  String playerBackground = 'images/audio_img/arzi.jpg';
  String bBackground = 'images/arzi/arzi-1.jpg';
  String audioasset = "audio/arzi.mp3";
  String towername = "Эрзи";

  String textTower = "Эрзи (Арзи, Аьрзи) главная достопримечательность долины Армхи, один из крупнейших в горной Ингушетии башенных поселков. Сейчас в нём можно увидеть 8 боевых, 2 полубоевых, 47 жилых башен, несколько раз- НОТИПНЫХ СВЯТИЛИЩ И могильников. Большая часть боевых башен отреставрирована в 2015 году. Радиоуглеродная датировка одной них показала 1683 - 1723 год постройки. - По преданиям, Эрзи основали выходцы из поселения Кербите, которое расположено в 800 метрах восточнее, на узкой оконечности горного кряжа (к нему от Эрзи можно легко добраться пешком). В поисках более удобного ровного места жители Кербите спустились ниже на пологое плато, покрытое густым лесом. Когда люди начали вырубать лес и расчищать поляну для строительства, среди веток деревьев они наткнулись на гнездо орла. Это посчитали счастливым знаком для нового селения и назвали его Эрзи (инг. «орёл»). Боевые башни Эрзи достигают 5-6 этажей, и имеют высоту почти 30 метров. Входной проем у каждой боевой башни традиционно вел на второй этаж. Полубоевые четырехэтажные башни имели высоту до 15 метров. В их стенах — многочисленные бойницы для огнестрельного боя, хозяйственные и оборонительные ниши, а также редкие небольшие сводчатые оконные проемы. Жилые башни поселка были 2-4 - этажные, высотой от 7 до 14 метров. Некоторые из них имели лоджии. На их стенах сохранились петроглифы и тамгаобразные знаки: кресты, спирали, круги, трезубцы, и др. Доступ в поселок с двух сторон прикрывала длинная заградительная стена."
  "Рядом с башнями можно увидеть несколько склеповых могильников ХIII - ХVIII вв. Особый интерес представляет ядрообразный мавзолей XVIII века Янд-Каш (Могила Янда), который был построен над могилой знаменитого местного зодчего по имени Янд, родоначальника фамилии Яндиевых. О Янде сложено несколько сказаний и легенд. В 2019 году мавзолей был отреставрирован."
  "Выше по склону можно увидеть руины небольшого храма-святилища Эрдзели (Эрдсели), возведенного Яндом во второй половине XVIII века. В тайниках святилища археологи обнаружили три крупных железных креста."
  "Самая крупная реликвия Эрдзели уникальная литая бронзовая статуэтка орла, изготовленная в VIII веке в Ираке. Фигура высотой 38 см в 1930-х годах была вывезена кавказоведом Николаем Яковлевым в Санкт-Петербург, сейчас она экспонируется в Государственном Эрмитаже. Точная копия статуэтки хранится в Государственном музее Республики Ингушетия в Назрани."
  "К востоку от Эрзи, около дороги к поселку Кербите стоят два столпообразные святилища. Под преданиям, собранным археологом Д.Ю.Чахкиевым, святилища были торжественно воздвигнуты в XVIII веке на месте героической гибели местных вои- нов (молодого юноши и его пожилого деда) в жестоком бою с захватчиками. Из Эрзи происходят Яндиевы, Дзауровы, Мамиловы, Батаевы, Хабиевы, Чачаевы, Алдагановы, Буружевы, Гилатхоевы, др. ингушские фамилии.";

  List<String> listpaths = [
    "images/arzi/arzi-1.jpg",
    "images/arzi/arzi-2.jpg",
    "images/arzi/arzi-3.jpg",
    "images/arzi/arzi-4.jpg",
    "images/arzi/arzi-5.jpg",
    "images/arzi/arzi-6.jpg",
    "images/arzi/arzi-7.jpg",
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