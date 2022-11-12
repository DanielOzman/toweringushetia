import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Egikal extends KFDrawerContent {
  Egikal({
    Key? key,
  });

  @override
  _EgikalState createState() => _EgikalState();
}

class _EgikalState extends State<Egikal> {

  String playerBackground = 'images/audio_img/egikal.jpg';
  String bBackground = 'images/egikal/egikal-1.jpg';
  String audioasset = "audio/egikal.mp3";
  String towername = "Эгикал";

  String textTower = "Эгикал (Эгикхал, Эгкал, Эйкал, Аьга-Кхал) — самый крупный башенный поселок горной Ингушетии. В прошлом, по преданию, в нём возвышалось одиннадцать боевых башен. Сейчас сохранилось лишь шесть, и лишь одна – в полную высоту. Каждая башня располагалась в собственном замковом комплексе. Весь Эгикал также делился на кварталы, в каждом проживала своя группа ингушских фамилий. "
  "Сохранившаяся боевая башня в восточной части поселка, согласно пре-даниям, была построена в XVII в, и достигла высоты 25 метров. На двух стенах башни, на уровне её предпоследнего четвертого этажа можно увидеть искусные изображения в форме креста с «Голгофой». Вход в башню по традиции был сразу на второй этаж, а на первом этаже были обустроены крупные каменные конусовидные отсеки для хранения припасов. Остальные боевые башни Эгикала также имели пирамидально-ступенчатую крышу. Особый интерес представляют собой , руины самой западной боевой башни, верхние этажи которой осыпались и обнажили перекрытие второго этажа, 3 выполненного в виде четырехстороннего сомкнутого каменного свода с выступающими гуртами. Если вы спуститесь от смотровой площадки у автодороги к поселку, то обязательно прогуляйтесь к ней."
  "Полубоевые и жилые башни комплекса интересны своим разнообразием. От сохранившей боевой башни в восточной части поселка поднимитесь по склону вверх к жилой башне в следующем ряду. На ней вы можете увидеть пять разнообразных петроглифов. Согласно результатам радиоуглеродной датировки, она была построена в период с 1492 по 1643 гг. Поднимитесь по склону еще выше, и вы увидите редкий тип строения с закругленной фасадной стеной, т.е. построенной без острого угла. Еще выше по склону расположена могила писателя Идриса Базоркина. В западной части поселка обратите внимание на жилую башню с сохранившейся деревянной лоджией. В центре поселка можно увидеть стены мечети. Помимо этого, на стенах Эгикала можно найти оттиски кистей и пальцев мастеров-строителей, многочисленные петроглифы и рисунки краской — солярные знаки, изображения человеческих фигур."
  "В черте Эгикала - более сотни склепов, в том числе пять «городков мертвых», состоящих из групп полуподземных и наземных солнечных могильников. Гробницы отличались большим разнообразием, тут есть многоэтажные постройки с несколькими погребальными камерами, с коридорчиками, каменными ящиками и тайничками. Некоторые башнеобразные склепы имеют декоративные орнаменты, осуществленные путем выборки из стен мелких камней. По обнаруженным в склепах наконечникам стрел и золотоордынским монетам археологи к XIII-XV вв. Другая часть гробниц – эпохи средней и поздней бронзы."
  "На западной окраине поселка Эги- кал, на громадном скальном валуне, можно увидеть руины ядрообразного мавзолея XVIII века, именуемого Танги-Каш (Могила Танги), в честь захороненного в нём героически павшего в бою местного воина-наездника по имени Танги родоначальника ингушской фамилии Тангиевых. Таких ядрообразных мавзолеев в Эгикале было два, второй разрушен до основания. Рядом с мавзолеем «Могила Танги» стоит столпообразное святилище, также воздвигнутое в его честь."
  "В черте Эгикала можно увидеть еще два подобных столпообразных святилища. На восточной окраине поселка Эгикал, на высоком правом берегу речки, сохранились руины более 20 циклопических жилищ, сложенных из огромных прямоугольных каменных блоков, без связующего раствора. Такие же мегалитические жилища расположены И к северу от Эгикала. Третий поселок у подножия скал среди хвойного лесного массива получил название Старый Эгикал, он состоит из более чем 15-ти циклопических жилищ, которые предварительно датированы второй половиной II тыс. до н. э. — XV в. н. э. – В прошлом в Эгикале жили оружейники, кузнецы, гончары, деревообработчики, ювелиры и другие ремесленники, знатоки обычного горского права и народной медицины, музыканты и отважные воины. Из Эгикала происходят Аушевы, Богатыревы, Базоркины, Газдиевы, Тангиевы, Алиевы, Ведзижевы, Ужаховы, Гандаровы, Гуражевы, Баталовы и другие ингушские фамилии."
  "В позднем средневековые Эгикал стал административно-политическим, экономическим и культурным центром не только Галгаевского ущелья, но и всей горной Ингушетии. Для своего времени он был хорошо укрепленным средневековым городом. Башни были обнесены высокой каменной стеной с запирающимися арочными воротами. В стене были устроены бойницы, сверху лежали крупные камни, которые стража могла сбросить на головы осаждавших. Хотя к нашим дням стена разобрана, и многие башни превратились в руины, Эгикал по-прежнему поражает воображение."
  "Выделите пару часов на прогулку по Эгикалу, чтобы проникнуться его атмосферой.";

  List<String> listpaths = [
    "images/egikal/egikal-1.jpg",
    "images/egikal/egikal-2.jpg",
    "images/egikal/egikal-3.jpg",
    "images/egikal/egikal-4.jpg",
    "images/egikal/egikal-5.jpg",
    "images/egikal/egikal-6.jpg",
    "images/egikal/egikal-7.jpg",
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