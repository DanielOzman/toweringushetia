import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class DetailPage extends StatefulWidget {
  final imgPath;
  final audioPath;
  final towerName;

  DetailPage({Key? key, this.imgPath, this.audioPath, this.towerName}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  bool tempValue = false;

  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();

  @override
  void initState() {

    String audioasset = widget.audioPath;
    Future.delayed(Duration.zero, () async {

      ByteData bytes = await rootBundle.load(audioasset); //load audio from assets
      audiobytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) { //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {

        });
      });
      player.onAudioPositionChanged.listen((Duration  p){
        currentpos = p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds:currentpos).inHours;
        int sminutes = Duration(milliseconds:currentpos).inMinutes;
        int sseconds = Duration(milliseconds:currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {
          //refresh the UI
        });
      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // IMAGE PORTION OF PLAYINGPAGE
          Column(
                children: <Widget>[
                  Container(

                      margin: EdgeInsets.only(top:30),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      child: Container(
                        child: Image.asset(widget.imgPath),
                        decoration: BoxDecoration(
                        //color: Colors.white,
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)

                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], ),
                      ),
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/5,
                        right: MediaQuery.of(context).size.width/5,
                        top: MediaQuery.of(context).size.width/5,
                        bottom: MediaQuery.of(context).size.width/5,
                      )

                  ),

/////////////////////////////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.width-30,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: <Color>[Color.fromRGBO(126, 168, 126, 1), Color.fromRGBO(
                            87, 143, 82, 0.5)],
                      ),
                    ),
                    //color: Colors.green,
                    child:
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                          children: [
                            Spacer(),
                            Container(
                              child: Text(widget.towerName, style: TextStyle(fontSize: 32,
                                  color: Colors.black),),
                            ),
                            Spacer(),
                            Container(
                              child: Text(currentpostlabel, style: TextStyle(fontSize: 25,
                                  color: Colors.black),),
                            ),
                            Container(
                                child: Slider( activeColor: Colors.black, inactiveColor: Colors.black12,
                                  value: double.parse(currentpos.toString()),
                                  min: 0,
                                  max: double.parse(maxduration.toString()),
                                  divisions: maxduration,
                                  label: currentpostlabel,
                                  onChanged: (double value) async {
                                    int seekval = value.round();
                                    int result = await player.seek(Duration(milliseconds: seekval));
                                    if(result == 1){ //seek successful
                                      currentpos = seekval;
                                    }else{
                                      print("Seek unsuccessful.");
                                    }
                                  },
                                )
                            ),
                            Container(
                              child: Wrap(
                                spacing: 10,
                                children: [
                                  new IconButton(
                                    icon: Icon((isplaying?Icons.pause:Icons.play_arrow), size: 30, color: Colors.black,),
                                    onPressed: () async {
                                      if(!isplaying && !audioplayed){
                                        int result = await player.playBytes(audiobytes);
                                        if(result == 1){ //play success
                                          setState(() {
                                            isplaying = true;
                                            audioplayed = true;});
                                        }else{
                                          print("Error while playing audio.");
                                        }
                                      }else if(audioplayed && !isplaying){
                                        int result = await player.resume();
                                        if(result == 1){ //resume success
                                          setState(() {
                                            isplaying = true;
                                            audioplayed = true;
                                          });
                                        }else{
                                          print("Error on resume audio.");
                                        }
                                      }else{
                                        int result = await player.pause();
                                        if(result == 1){ //pause success
                                          setState(() {
                                            isplaying = false;
                                          });
                                        }else{
                                          print("Error on pause audio.");
                                        }
                                      }
                                    },
                                  ),

                                  new IconButton(
                                    icon: Icon(Icons.stop, size: 30, color: Colors.black,),
                                    onPressed: () async {
                                      int result = await player.stop();
                                      if(result == 1){ //stop success
                                        setState(() {
                                          isplaying = false;
                                          audioplayed = false;
                                          currentpos = 0;
                                        });
                                      }else{
                                        print("Error on stop audio.");
                                      }
                                    },
                                  ),

                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),),
                    ),],),
          ///////////////////////

          new Padding(
            padding: EdgeInsets.only(top: 30),
            child: new Row(
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    int result = await player.stop();
                    if(result == 1){ //stop success
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                        currentpos = 0;
                      });
                    }
                  },
                ),
                Spacer(),
                SizedBox(width: 30)
              ],
            ),
          ),
          /*new Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Colors.red,
                  Colors.blue
                ],
              ),
            ),
            margin: EdgeInsets.only(top:50),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Spacer(),
                Spacer(),
                Container(
                  child: Text(currentpostlabel, style: TextStyle(fontSize: 25,
                      color: Colors.white),),
                ),
                Container(
                    child: Slider( activeColor: Colors.white,
                      value: double.parse(currentpos.toString()),
                      min: 0,
                      max: double.parse(maxduration.toString()),
                      divisions: maxduration,
                      label: currentpostlabel,
                      onChanged: (double value) async {
                        int seekval = value.round();
                        int result = await player.seek(Duration(milliseconds: seekval));
                        if(result == 1){ //seek successful
                          currentpos = seekval;
                        }else{
                          print("Seek unsuccessful.");
                        }
                      },
                    )
                ),
                Container(
                  child: Wrap(
                    spacing: 10,
                    children: [
                      new IconButton(
                        icon: Icon((isplaying?Icons.pause:Icons.play_arrow), size: 30, color: Colors.white,),
                            onPressed: () async {
                            if(!isplaying && !audioplayed){
                              int result = await player.playBytes(audiobytes);
                              if(result == 1){ //play success
                                setState(() {
                                  isplaying = true;
                                  audioplayed = true;});
                                }else{
                                print("Error while playing audio.");
                              }
                            }else if(audioplayed && !isplaying){
                              int result = await player.resume();
                              if(result == 1){ //resume success
                                setState(() {
                                  isplaying = true;
                                  audioplayed = true;
                                });
                              }else{
                                print("Error on resume audio.");
                              }
                            }else{
                              int result = await player.pause();
                              if(result == 1){ //pause success
                                setState(() {
                                  isplaying = false;
                                });
                              }else{
                                print("Error on pause audio.");
                              }
                            }
                          },
                            ),

                      new IconButton(
                        icon: Icon(Icons.stop, size: 30, color: Colors.white,),
                        onPressed: () async {
                          int result = await player.stop();
                          if(result == 1){ //stop success
                            setState(() {
                              isplaying = false;
                              audioplayed = false;
                              currentpos = 0;
                            });
                          }else{
                            print("Error on stop audio.");
                          }
                        },
                      ),

                    ],
                  ),
                ),
                Spacer(),
        ],
      ),),*/],),
    );
  }


}
