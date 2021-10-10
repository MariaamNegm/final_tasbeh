import 'package:flutter/material.dart';
import 'package:tasbeh/newcard.dart';
import 'package:tasbeh/constants.dart';
class disazkar extends StatefulWidget {
  @override
  _disazkarState createState() => _disazkarState();
}

class _disazkarState extends State<disazkar> {
  //define colors for late usage

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
      appBar: MediaQuery.of(context).size.width>600?null:appbar,
      body:Stack(
        children:[
          //background image
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
                newcard("رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً"),
                newcard("اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور."),
                newcard(" سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه.ً"),
                newcard(" اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتًَ"),
                newcard(" يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنًٍ"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
