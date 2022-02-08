// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
 

void main() {
  runApp(const Piano());
}
class Piano extends StatelessWidget {
void playsound (int multiplesound) {
  final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.play();
                assetsAudioPlayer.open(
              Audio('assets/audios/sound$multiplesound.mp3'),);
 
}
  const Piano({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: 
          Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // FLATBUTTON
              Expanded(
               child: RaisedButton(
                color: Colors.red,
                onPressed: (){
                  playsound (1);
                
                
                         },),
             ),
              //1st End 

              Expanded(
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    playsound (2);
                         }, ),
              ),


            Expanded(
              child: RaisedButton(
                color: Colors.black,
                onPressed: (){
                playsound (3);
                
              }, ),
            ),

            Expanded(
              child: RaisedButton(
                color: Colors.blue,
                onPressed: (){
               playsound (4);
                
              }, ),
            ),

           Expanded(
             child: RaisedButton(
                color: Colors.yellow,
                onPressed: (){
                playsound (5);
              },),
           ),

           Expanded(
             child: RaisedButton(
                color: Colors.grey,
                onPressed: (){
                playsound (6);
                
              },),
           ),

                         
           Expanded(
             child: RaisedButton(
                color: Colors.white,
                onPressed: (){
                playsound (7);
                
              },),
           ),

           Expanded(
             child: RaisedButton(
               color: Colors.greenAccent,
                onPressed: (){
               playsound (8);
                
              },),
           ),

          
            
          ],
        )),
      ),
    );
      
    
  }
}
  