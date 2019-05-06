import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'Text widget',
      home:Scaffold(
        body:Center(
            child:Container(
              child: new Text(' 0集免费教程。',
//                textAlign:TextAlign.left,
                maxLines: 2,
                overflow:TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize:25.0,
                  color:Color.fromARGB(255, 255, 150, 150),
                  decoration:TextDecoration.underline,
                  decorationStyle:TextDecorationStyle.solid,
                ),
              ),
              width:500.0,
              height:400.0,
//              color: Colors.lightBlue,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(10.0),
              padding:const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
              decoration: new BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
                ),
                border:Border.all(width:2.0,color:Colors.red)
              )
            ),
        ),
      ),
    );
  }
}





