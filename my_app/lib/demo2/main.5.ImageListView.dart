import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Widget'),
        ),
        body: new ListView(
            children:<Widget>[
              new Image.network(
                  'https://www.lgstatic.com/i/image2/M01/26/7D/CgotOVzH_8qAR2MTAAf_MoKN1xE872.PNG'
              ),
              new Image.network(
                  'https://www.lgstatic.com/i/image2/M01/26/7D/CgotOVzH_8qAR2MTAAf_MoKN1xE872.PNG'
              ),
              new Image.network(
                  'https://www.lgstatic.com/i/image2/M01/26/7D/CgotOVzH_8qAR2MTAAf_MoKN1xE872.PNG'
              ),new Image.network(
                  'https://www.lgstatic.com/i/image2/M01/26/7D/CgotOVzH_8qAR2MTAAf_MoKN1xE872.PNG'
              )

            ]
        ),
      ),
    );
  }
}