import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuu/models/numbers.dart';

class PagesContainer extends StatelessWidget {
  const PagesContainer({super.key,required this.number,required this.color});
  final item number;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return  Container(
      color: color,
      height: 65,
      child: Row(
        children: [
          Container(
              color: Color(0xfffff6dc),
              child: Image.asset(number.image!)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jaText!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    )
                ),
                Text(number.enText!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1,),
          IconButton(onPressed: (){
            AudioCache player =AudioCache(prefix:'assets/sounds/');
            player.loadAsFile(number.sound);
          }, icon: Icon(Icons.play_arrow,
          color: Colors.white,
            size: 30,
          ))
        ],
      ),
    );
  }
}


