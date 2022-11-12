import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Home extends KFDrawerContent {
  Home({
    Key? key,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/headmap.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    child: Material(
                      shadowColor: Colors.transparent,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: widget.onMenuPressed,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 15)
                ],
              ),
              Padding(
                padding: EdgeInsets.all(30),
                  child: Center(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(

                      children: <Widget>[
                        Text("Добро пожаловать!", style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text("ГИД TOWER INGUSHETIA", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,)),
                    SizedBox(height: 20),
                    Text("Доступ к интернету может стать проблемой во время поездки. "
                    "Но это не значит, что нужно брать с собой миллион бумажных книг "
                    "или исписанный блокнот с полезной информацией о новом месте. Ведь "
                    "можно просто скачать на смартфон приложение, для работы которого вам "
                    "не нужно будет искать Wi-Fi или тратить деньги на интернет в роуминге.", style: TextStyle(fontSize: 17, color: Colors.black87), textAlign: TextAlign.justify,),
                    SizedBox(height: 10),
                    Text("Гид “Tower Ingushetia” включает в себя информацию о "
                    "башенных комплексах Республики Ингушетия.", style: TextStyle(fontSize: 17, color: Colors.black87), textAlign: TextAlign.justify,),
                    SizedBox(height: 10),
                    Text("Читай необходимую информацию и путешествуй самостоятельно по горным замкам. "
                    "А если скучно читать, то можно включить аудиогид и устройство "
                    "само расскажет о башенном комплексе.", style: TextStyle(fontSize: 17, color: Colors.black87), textAlign: TextAlign.justify,),

                  ],
                ), ),
              ),

            ],
          ),
        ],
      ),
    ), );
  }
}
