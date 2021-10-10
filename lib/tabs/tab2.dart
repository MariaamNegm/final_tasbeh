import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tasbeh/constants.dart';
import 'disazkar.dart';
import 'tab3.dart';
import 'tab4.dart';
import 'tab5.dart';
import 'tab6.dart';

class tab2 extends StatefulWidget {
  @override
  _tab2State createState() => _tab2State();
}
//this class is for the list of cards hold azkar for each type
class _tab2State extends State<tab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          //background image
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/tas2.jpg"),
                // it changes while updating from the function
                fit: BoxFit.cover,
              )),),
          //the view of the items on the stack
          MediaQuery.of(context).size.width >fixedSize?
          GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount:4),
            children: [
              //the children of the gridview as gesturedetector to make it clickable
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return disazkar();}));
                  // when clicked will go to the disazkar page
                },
                child: LayoutBuilder(
                  builder: (ctx ,  Constriants)=>
                    Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                     padding: EdgeInsets.all(paddingCardsTextdesktop),
                    child:Card(
                      elevation: 40.8,
                      shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top:paddingCardsTextdesktop),
                        child: Text("اذكار  الصباح",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab3();}));
                  // when clicked will go to the tab3 page
                },
                child: LayoutBuilder(
                      builder: (ctx ,  Constriants)=>
                   Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsTextdesktop),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top: paddingCardsTextdesktop),
                        child: Text("اذكار المساء",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab4();}));
                  // when clicked will go to the tab4 page
                },
                child: LayoutBuilder(
                  builder: (ctx, Constriants)=>
                   Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsTextdesktop),
                    child:Card(
                      elevation: 40.8,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top:paddingCardsTextdesktop),
                        child: Text("اذكار   النوم",style:TextStyle
                          (fontSize:30,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){return  tab5();}));
                // when clicked will go to the tab5 page
              },
                child: LayoutBuilder(
                  builder: (ctx,  Constriants)=>
                    Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsTextdesktop),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top:paddingCardsTextdesktop),
                        child: Text("اذكار الصلاة",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab6();}));
                  // when clicked will go to the tab6 page
                },
                child: LayoutBuilder(
                  builder: (ctx,Constriants)=>
                    Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsTextdesktop),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top:paddingCardsTextdesktop),
                        child: Text("اذكار المسجد",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
            ],

          ):
          GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount:2),
            children: [
              //the children of the gridview as gesturedetector to make it clickable
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return disazkar();}));
                  // when clicked will go to the disazkar page
                },
                child: LayoutBuilder(
                  builder: (ctx ,  Constriants)=>
                      Container(
                        height:Constriants.maxHeight *0.2,
                        width:Constriants.maxWidth*0.2,
                        padding: EdgeInsets.all(paddingCardsMobile-20),
                        child:Card(
                          elevation: 40.8,
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(circularBorder+10)
                          ),
                          color:Colors.black87,
                          child: Padding(
                            padding: const EdgeInsets.only(top:paddingCardsMobile+40),
                            child: Text("اذكار  الصباح",style:TextStyle
                              (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                          ),
                        ) ,
                      ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab3();}));
                  // when clicked will go to the tab3 page
                },
                child: LayoutBuilder(
                  builder: (ctx,Constriants)=>
                    Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsMobile-20),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top: paddingCardsMobile+40),
                        child: Text("اذكار المساء",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab4();}));
                  // when clicked will go to the tab4 page
                },
                child: LayoutBuilder(
                  builder: (ctx,Constriants)=>
                   Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsMobile-20),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top: paddingCardsMobile+40),
                        child: Text("اذكار   النوم",style:TextStyle
                          (fontSize:30,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){return  tab5();}));
                // when clicked will go to the tab5 page
              },
                child: LayoutBuilder(
                  builder: (ctx,Constriants)=>
                   Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsMobile-20),
                    child:Card(
                      elevation: 40.8,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top:paddingCardsMobile+40),
                        child: Text("اذكار الصلاة",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab6();}));
                  // when clicked will go to the tab6 page
                },
                child: LayoutBuilder(
                  builder: (ctx,Constriants)=>
                    Container(
                    height:Constriants.maxHeight *0.2,
                    width:Constriants.maxWidth*0.2,
                    padding: EdgeInsets.all(paddingCardsMobile-20),
                    child:Card(
                      elevation: 40.8,

                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(circularBorder+10)
                      ),
                      color:Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.only(top: paddingCardsMobile+40),
                        child: Text("اذكار المسجد",style:TextStyle
                          (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                      ),
                    ) ,
                  ),
                ),
              ),
            ],

          )
        ],
      )
    );
  }
}
