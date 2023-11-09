import 'package:flutter/material.dart';
import 'package:tokuu/componants/pages_container.dart';
import 'package:tokuu/models/numbers.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage ({super.key});
  final List<item> phrasesList=const[
    item(
        image: 'assets/images/numbers/number_one.png',
        jaText: 'ichi',
        enText: 'one',
        sound:'number_one_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_two.png',
        jaText: 'ni',
        enText: 'two',
        sound :'number_two_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_three.png',
        jaText: 'San',
        enText: 'three',
        sound: 'number_three_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_four.png',
        jaText: 'Shi',
        enText: 'four',
        sound: 'number_four_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_five.png',
        jaText: 'Go',
        enText: 'five',
        sound: 'number_five_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_six.png',
        jaText: 'Roku',
        enText: 'six',
        sound: 'number_six_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_seven.png',
        jaText: 'Sebun',
        enText: 'seven',
        sound: 'number_seven_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_eight.png',
        jaText: 'hachi',
        enText: 'eight',
        sound: 'number_eight_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_nine.png',
        jaText: 'Sebun',
        enText: 'nine',
        sound: 'number_nine_sound.mp3'
    ),
    item(
        image: 'assets/images/numbers/number_ten.png',
        jaText: 'hachi',
        enText: 'ten',
        sound: 'number_ten_sound.mp3'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Phrases'
      ),
      backgroundColor: Color(0xff46322b),
    ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PagesContainer(
            number: phrasesList[index],
            color: Color(0xff50adc7),
          );
        },
      ),

    );
  }
}
