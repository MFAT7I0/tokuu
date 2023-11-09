import 'package:flutter/material.dart';
import 'package:tokuu/componants/home_page.dart';
import 'package:tokuu/screens/colors_page.dart';
import 'package:tokuu/screens/family_members_page.dart';
import 'package:tokuu/screens/number_page.dart';
import 'package:tokuu/screens/phrases_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: ,
        appBar: AppBar(
          backgroundColor: Color(0xff46322b),
          title: Text('Toku'),
        ),
        body: Column(
          children: [
            Category(text: 'Numbers',color: Color(0xffef9235),onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumbersPage();
              }));
            },
            
            ),
            Category(text: 'Family Members',color: Color(0xff558b37),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FamilyMembersPage();
              }));
            },),
            Category(text: 'Colors',color: Color(0xff79359f),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorsPage();
              }));
            },),
            Category(text: 'phrases',color: Color(0xff50adc7),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhrasesPage();
              }));
            },),
          ],
        ),
      ),
    );
  }
}



