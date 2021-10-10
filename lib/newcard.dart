import 'constants.dart';
import 'package:flutter/material.dart';
/*
*
*
*
*
*
*
*
*
*
* this class is created to make an objects from it to support the idea of a card and a button
*
*
*
*
*
*
*
*
* */
class newcard extends StatefulWidget {
  String txt;

  newcard(this.txt);
  @override
  _newcardState createState() => _newcardState();
}

class _newcardState extends State<newcard> {
  //define the colors needed in the class
  Color greenish=Color.fromRGBO( 229, 243, 238, 1);
  Color greenishbot=Color.fromRGBO( 229, 243, 238, 1);
  Color blackcolor=Color.fromRGBO(2, 12, 8, 1);
  int counter=3;

  @override
  Widget build(BuildContext context) {
    //returning the card while making an object from it
    return  Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Card(
        color: blackcolor,
        //color of the card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(circularBorder),
            topLeft:  Radius.circular(circularBorder),
            bottomRight:  Radius.circular(circularBorder),
            topRight:  Radius.circular(circularBorder),
          ),
        ),
        //the shape of card has circular borders
        child: Column(
          children: [
            //taking the text from the constructor up
            Padding(
              padding: const EdgeInsets.all(defaultPadding-4),
              child: Text("${widget.txt}",style:TextStyle
                (color: Colors.white,fontWeight:FontWeight.bold,fontSize: fontsize-10),textAlign: TextAlign.center,),
            ),
            //make it in the center
            FlatButton(onPressed:(){ setState(() {
              if(counter>1)
              {//minius the counter by one
                counter=counter-1;
              }
              else if(counter==1)
              {// if the counter get to zero the color will change here
                counter=counter-1;
                greenishbot=Color.fromRGBO(20, 230, 156 , 1);
              }
            });},
                color: greenishbot, height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(circularBorder),
                    bottomRight:  Radius.circular(circularBorder),

                  ),
                ),
                //the width of the flatbutton
                minWidth: double.infinity,child:Text("$counter"))
          ],
        ),
      ),
    );
  }
}
