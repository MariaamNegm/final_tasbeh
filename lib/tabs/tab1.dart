import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasbeh/constants.dart';

class tab1 extends StatefulWidget {
  @override
  _tab1State createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  int counter=0;
  //this counter represents the initial state of it on the screen
  void  increamentCounter(){
    // we increamnet the counter
    setState(() {
      counter++;
    });
  }
  void   zeroCounter(){
    //setting the counter to zero
    setState(() {
      counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
            child: Stack(
                children: [
                  //background image
                  Container(decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("images/tas2.jpg"),

                        // it changes while updating from the function
                        fit: BoxFit.cover,
                      )),),

                  Center(
                    child: Column(
                         mainAxisAlignment:MainAxisAlignment.center,
                      children:[
                        Text("$counter",style:TextStyle
                          (fontSize: fontsize+20,color:Colors.black87,fontWeight:FontWeight.w600),
                           ),
                        //print the counter
                        SizedBox(height:10),
                        //make the space between
                        FlatButton(
                          // abutton to press to increament
                              padding:EdgeInsets.all(defaultPadding+8),
                              color:Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(circularBorder+30)
                              ),
                              onPressed:()
                              { increamentCounter();
                                print("$counter");
                              }, child:
                          Text("??????",style: TextStyle(fontSize:fontsize-10,color:Colors.white),textAlign:TextAlign.center,)
                          ),
                        // abutton to press to increament
                        SizedBox(height:10),
                        //make the space between
                        FlatButton(
                            padding:EdgeInsets.all(defaultPadding+8),
                            color:Colors.black87,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(circularBorder+30)
                            ),
                            onPressed:()
                            {  zeroCounter();
                            print("$counter");
                            }, child:
                        Text("??????????",style: TextStyle(fontSize:fontsize-10,color:Colors.white),textAlign:TextAlign.center,)
                        ),
                        // abutton to press to set to zero
                      ],
                    ),
                  ),
                ],
            ),
      ),
    );
  }


}
