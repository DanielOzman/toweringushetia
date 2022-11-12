import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Beyni extends KFDrawerContent {
  Beyni({
    Key? key,
  });

  @override
  _BeyniState createState() => _BeyniState();
}

class _BeyniState extends State<Beyni> {

  String playerBackground = 'images/audio_img/beyni.jpg';
  String bBackground = 'images/beyni/beyni-1.jpg';
  String audioasset = "audio/beyni.mp3";
  String towername = "Бейни";

  String textTower = "К востоку от Харпа, и северу от Кашети расположено современное село Бейни, в котором проживают около 100 человек. Выше села сохранился башенный комплекс Бейни (Бейн, Бейне). Его название трактуют двояко: село «мертвых» или «бей» - «луг», «ний» - «корыто». Первый вариант названия связан со следующим преданием. "
  "Когда-то в этой местности проживало очень воинственное племя Гамовцев (ГӀам-наькъан - племя ведьм). Они отличались жестокостью и часто грабили соседей. Однажды с жителями соседнего села Фалхан произошел кровопролитный конфликт, который окончился полным уничтожением Гамовцев. На завоеванной территории поселились фамилии Шоухаловы, Мурзабековы, Местоевы, Келиговы, а также Берса- новы, Умаровы, и др. Село получило название Бейни («бейн» по-ингуш- ски «гибель»). Ниже по склону холма были захоронены погибшие, так появилось село Кашети (от ингушского «каш» - «могила»)."
  "Сейчас в башенном комплексе Бейни сохранилось 8 жилых башен, и одна полубоевая постройка. Каждая башня входила в отдельный комплекс сооружений. На стенах и дверных проемах двух жилых башен можно видеть петроглифы и тамги."
  "До середины XX века на окраине поселка возвышался позднесредневековый храм-святилище Бейни-Сели. К нашим дням он не сохранился. Также утрачены три столпообразных святилища."
  "Поселок Бейни - самый близкий к Столовой горе, на которой также возвышались храмы. Обычно они обслуживались опытными жрецами из Бейни. Одним из последних был Манк Местоев."
  "В наши дни из села Бейни также начинаются туристические подъемы на Столовую гору.";

  List<String> listpaths = [
    "images/beyni/beyni-1.jpg",
    "images/beyni/beyni-2.jpg",
    "images/beyni/beyni-3.jpg",
    "images/beyni/beyni-4.jpg",
    "images/beyni/beyni-5.jpg",
    "images/beyni/beyni-6.jpg",
    "images/beyni/beyni-7.jpg",
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