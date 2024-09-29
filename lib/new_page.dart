import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";

class NewPage extends StatelessWidget{
  const NewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),



      //Images
      body: Column(
        children: [
          Image.asset("assets/images/logo1.png", width:200, height:200),
          Text("This is a flutter logo"),
          Image.network("https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png", width:200, height:200),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Dart logo", style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
          ),
          ElevatedButton(
            onPressed: (){
              Fluttertoast.showToast(msg: "Awesome!");
            },
            child: Text("Click Me"))
        ],
      )



      //---------------------SCROLL  VERTICAL BAR-------------------------------------
      /*
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Image.asset("assets/images/logo1.png", width:200, height:200),
          Image.network("https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png", width:200, height:200)
        ],
        ),
        
      )
      */


      //----------------------------------------------------------
      /*body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            
          },
          child: const Text('Go back!'),
        ),
      ),*/ //Center body with a button that say s "Go back"
    );
  }
}