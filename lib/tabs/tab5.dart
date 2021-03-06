import 'package:flutter/material.dart';
import 'package:tasbeh/constants.dart';
import 'package:tasbeh/newcard.dart';

class  tab5 extends StatefulWidget {
  @override
  _tab5State createState() => _tab5State();
}
//this tab is for masjed
class _tab5State extends State< tab5> {


  @override
  Widget build(BuildContext context) {
    var appbar=AppBar(
      backgroundColor: blackcolor,
      leading: IconButton(
        onPressed:(){Navigator.pop(context);}
        ,icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
    );
    return  Scaffold(
      appBar: MediaQuery.of(context).size.width> fixedSize?null:appbar,
      body:Stack(
        children:[
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/tas2.jpg"),
                // it changes while updating from the function
                fit: BoxFit.cover,
              )),),
          Padding(
            padding: const EdgeInsets.all(defaultPadding-4),
            child: ListView(
              //having listview of the azkar
              children: [
                //make an object of class newcard to pass text to the constructor
                newcard(" سُبْحانَ رَبِّيَ الْعَظِيْمِ.ً"),
                newcard("سُبْحَانَ رَبِّيَ العَظِيمِ وَبِحَمْدِهِ. "),
                newcard(" سُبحانَكَ اللّهمَّ ربَّنا وَبِحمدِكَ، اللّهمَّ اغفِرْ ليً"),
                newcard(" سُبْحَانَ رَبِّيَ الأعْلَى وَبِحَمْدِهًِ"),
                newcard(" سَمِعَ اللهُ لِمَنْ حَمِدَهُ.ً"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
