import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'detailpage.dart';
import 'gallerypage.dart';




class Thaba extends KFDrawerContent {
  Thaba({
    Key? key,
  });

  @override
  _ThabaState createState() => _ThabaState();
}

class _ThabaState extends State<Thaba> {

  String playerBackground = 'images/audio_img/thaba.jpg';
  String bBackground = 'images/thaba/thaba-1.jpg';
  String audioasset = "audio/thaba.mp3";
  String towername = "Тхаба-Ерды";

  String textTower = "Тхаба-Ерды — крупнейший на Центральном Кавказе средневековый христианский храм, расположенный в южной части Таргимской котловины, недалеко от впадения в реку Ассу ее правого притока — реки Гулой-хи. Место для строительства храма было выбрано на пересечении военно-торговых путей. Вероятно, некогда тут стояло горское святилище, позже на его месте началось водружение хриcтианской церкви. Точное время начала строительства неизвестно. За более чем тысячелетнюю историю храм Тхаба-Ерды несколько раз перестраивался, пока не принял современный вид. "
  "Первая постройка (вероятно, IX-Х веков), имела форму трехцерковной базилики. Центральная церковь в длину достигала 14 метров, с юга и севера к ней примыкали боковые церкви. Храм был покрыт резьбой, выполненной на блоках мягкого водяного туфа — травертина. Стены были выложены из дикого камня. Этот храм разрушился, и был восстановлен, вероятно, в ХІ-ХІІ вв. По габаритам новое сооружение было крупнее предыдущего. В кладке были использованы старые резные блоки, к которым были добавлены новые, в т.ч. карнизы. Этот храм снова был частично разрушен, и в XV-XVI веках восстановлен снова. От предыдущей постройки полностью сохранилась лишь алтарная часть со сводом. Остальные стены и своды выложены заново, причем в новой кладке использовались резные блоки от двух предыдущих построек, частью хаотично, частью с попыткой создать композицию. Храм при этом стал однонефным, внутреннее помещение длиной в 16 метров было поделено тремя высокими остроконечными арками на четыре неравные части. От окружавшей храма галереи сохранились лишь нижние части стен."
  "В 1781 году храм впервые был описан путешественниками, сначала квартирмейстером русской армии Штедером, затем в 1811 году М.Энгельгардтом, в 1886 г. В.Ф.Миллером. Последний застал Тхаба-Ерды в полной сохранности, и зарисовал барельеф на западном фасаде."
  "К середине XX века существенная часть памятника оказалась разрушена."
  "В 1969-1971 гг. грузинскими специалистами была проведена реставрация. Некоторые камни с барельефами, однако, оказались утеряны, другие ныне хранятся в музеях Назрани и Грозного. Во время реставрации 2002 года храм получил современную двускатную крышу, новые двери, и восстановленный каменный карниз, украшенный растительным орнаментами."
  "Версий происхождения названия храма несколько. Одними исследователями название выводится с ингушского ТкъобIа-Ерды как «Наша вера», «Храм веры». Другие исследователи склоняются к названию «Две тысячи святых»."
  "Третьи предполагают, что Тхаба-Ерды - это искаженное от Тома-Ерды, то есть храм святого Фомы. По четвертой версии, название связано с именем верховного бога Тха, известному по северокавказскому фольклору."
  "Главный вход в храм расположен на западной стороне, и ведет через каменную ограду (руины старой галереи), испещренную различными знаками (крестами) и «чашечными» углублениями."
  "Очевидно, она была собрана заново из обломков старого храма, блоки в ней стоят не на своем изначальном месте. На рельефе видны три мужских фигуры в анфас. В центре, очевидно, Христос, над его головой модель грузинской крестовокупольной церкви с граненым барабаном и высоким коническим куполом. Человек справа в левой руке держит большой крест, правая рука на рукояти меча. Вероятно, это фигура ктитора (заказчика храма). Человек слева священник, в облачении с крестами, с кистями винограда, по сторонам от головы фигуры была надпись на грузинском «Георгий епископ». По обеим сторонам среднего барельефа вделаны плиты с изображениями двух ангелов. Сейчас модели храма, фигур священника и ангелов на памятнике нет."
  "В барельефе окна восточной стены Тхаба-Ерды, очевидно, изображен Самсон, борющийся со львом и две фигуры (вероятно, ктиторов), предстоящих Христу."
  "Западная и южная стены храма также украшены консолями с барельефами, на которых изображены люди и фигура животного."
  "В процессе раскопок в Тхаба-Ерды были найдены и установлены внутри храма каменная купель и высеченный большой каменный крест, которые, видимо, относятся к начальному периоду храма. Также были обнаружены древнегрузинский рукописный псалтырь Х в., монеты с изображением византийского императора Михаила III (IX в.), и изящные стеклянные сосуды желтого, синего и зеленого оттенков."
  "Храм Тхаба-Ерды, воплотивший в себе особенности архитектуры стран Закавказья и местных традиций, играл в истории Ингушетии огромную роль. Помимо религиозных обрядов, тут собирался Совет старейшин всех ингушских племен и их соседей, здесь проводились общенациональные торжества, решались судьбоносные вопросы, принимались законы и вершилось правосудие.";


  List<String> listpaths = [
    "images/thaba/thaba-1.jpg",
    "images/thaba/thaba-2.jpg",
    "images/thaba/thaba-3.jpg",
    "images/thaba/thaba-4.jpg",
    "images/thaba/thaba-5.jpg",
    "images/thaba/thaba-6.jpg",
    "images/thaba/thaba-7.jpg",
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