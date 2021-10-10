import 'package:flutter/material.dart';
import 'package:tasbeh/constants.dart';
import 'package:tasbeh/newcard.dart';

class  tab4 extends StatefulWidget {
  @override
  _tab4State createState() => _tab4State();
}
//this tab is before sleep
class _tab4State extends State< tab4> {
  //define your own colors


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
      appBar: MediaQuery.of(context).size.width>fixedSize?null:appbar,
      body:Stack(
        children:[
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/tas2.jpg"),
                // it changes while updating from the function
                fit: BoxFit.cover,
              )),),
          Padding(
            padding: MediaQuery.of(context).size.width> fixedSize? const EdgeInsets.all(19.0):const EdgeInsets.all(15),
            child: ListView(
              //having listview of the azkar
              children: [
                //make an object of class newcard to pass text to the constructor
                newcard(" بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا. ً"),
                newcard(" اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَكً"),
                newcard(" سُبْحَانَ اللَّهِ.ً"),
                newcard(" الْحَمْدُ لِلَّهِ.ً"),
                newcard(" اللَّهُ أَكْبَرًُ"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
