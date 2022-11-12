import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';


class GalleryPage extends StatefulWidget {

  final List<String> listPaths;
  final towerName;

  GalleryPage({Key? key, required this.listPaths, this.towerName}) : super(key: key);

  @override
  _GalleryPageState createState() {
    return _GalleryPageState();
  }
}

class _GalleryPageState extends State<GalleryPage> {

  int currentPos = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(top: 25),
              child: new Row(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                  ),
                  Spacer(),
                  SizedBox(width: 15)
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Center(child: Text(widget.towerName, style: TextStyle(fontSize: 32,
                    color: Colors.white),),),
                Spacer(),
                CarouselSlider.builder(
                  itemCount: widget.listPaths.length,
                  options: CarouselOptions(
                      autoPlay: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentPos = index;
                        });
                      }
                  ),
                  itemBuilder: (context, index, pageViewIndex){
                    return MyImageView(widget.listPaths[index]);
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.listPaths.map((url) {
                    int index = widget.listPaths.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPos == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ]
          ) ]
      ),
    );
  }
}

class MyImageView extends StatelessWidget{

  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),

        )
    );
  }

}
