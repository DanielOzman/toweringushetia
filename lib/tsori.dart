import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Tsori extends KFDrawerContent {
  Tsori({
    Key? key,
  });

  @override
  _TsoriState createState() => _TsoriState();
}

class _TsoriState extends State<Tsori> {

  String playerBackground = 'images/audio_img/tsori.jpg';
  String bBackground = 'images/tsori/tsori-1.jpg';
  String audioasset = "audio/tsori.mp3";
  String towername = "Цори";

  String textTower = "Крупный башенный поселок Цори (Цхьоре) расположен в 20 км от храма Тхаба-Ерды, на живописном скалистом выступе, окруженном с двух сторон горными речками Цорей-хи. Цори входит в число самых мощных и интересных башенных комплексов горной Ингушетии. В процессе военных действий в разные периоды времени, начиная с IV века и до начала XIX века башенно-замковое поселение сильно пострадало.  В период позднего Средневековья Цори был духовным, экономическим и политическим центром всей округи, образуя Цоринское историческое общество ингушей. Исторический известно, что, даже в те времена в Цори была отдельная башня, где отливали железную руду и свинец для изготовления пуль и доспехов, а также для изготовления ручных огнестрельных оружий. Это поселение славилось своими искусными воинами, оружейниками, лекарями, музыкантами и т.д. В трудах и исторических сведениях арабских географов IX-X веков, таких как Масуди, ибн-Руста, в горном районе находилось царство Сур c крепостью Баб-Сур."
  "В комментариях Н.А. Караулова к указаниям этих арабских источников следует разъяснение что, «Царство Сур, ни что иное, как Цори во Владикавказском округе Терской области» а сейчас этот башенно-замковый комплекс находится на территории нынешней Ингушетии."
  "Из шести пятиэтажных боевых башен комплекса к нашим дням сохранились две. Первая башня полностью потеряла один угол, но продолжает стоять на оставшихся трех стенах. Вторая башня частично сохранила своё зубчатое завершение с машикулями-балкончиками, но плоская крыша строения обрушилась. Каждая из боевых башен располагалась в своём замковом комплексе, а весь поселок был окружен длинной и высокой каменной заградительной стеной с широкими запирающимися арочными воротами. Также в поселке насчитывались более сорока оснований в несколько ярусов были построены многочисленные жилые башни. Сейчас большая их часть в руинах и полуразрушенный."
  "В разных частях Цори можно увидеть более двадцати наземных, полуподземных, ядрообразных, храмовидных коллективных склепов усыпальниц (Малх-каш), раннего и позднего средневековья. В одном из недавно обрушившихся склепов, называемом Могушка-Каш (захоронения Могушки), были найдены более 200 человеческих останков. С ними были найдены предметы одежды, украшений, предметов быта и оружия. В которые вызвали огромный резонанс в обществе, а также огромный международный интерес известных историков и археологов. В найденных артефактах прослеживались следы древних амазонок что, подтверждается придания об потомке амазонок Аби которую после одного из сражения с татарами, где она была в походе со своим мужем полководцем Г1анажем прозвали Могушкой (Могучая). Такие найденные предметы такие как Курхарс(женский головной убор), мечь-Акинак, лук, стрелы, копья, височные кольца, перстни, серьги, платья в красных цветах и многое другое датируемые от VIII-XVI в. Археологические и исторические находки в с.Цори будут основой для дальнейших исследований для получения данных описаний и анализов исторических и археологических материалов."
  "Из башенно-замкового поселения Цори горной Ингушетии вышли такие Цоринские фамилии: Цороевы, Дзейтовы, Мякиевы, Зангиевы, Могушковы, Татиевы, Героевы, Бобхоевы, Ганижевы, Гайтукиевы Бисаевы, Батажевы, Точиевы, Амиевы, Хашиевы, Хасиевы и т.д., более восьмидесяти фамилии.";

  List<String> listpaths = [
    "images/tsori/tsori-1.jpg",
    "images/tsori/tsori-2.jpg",
    "images/tsori/tsori-3.jpg",
    "images/tsori/tsori-4.jpg",
    "images/tsori/tsori-5.jpg",
    "images/tsori/tsori-6.jpg",
    "images/tsori/tsori-7.jpg",
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