import "package:firstapp/new_page.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Flutter", style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Flutter", style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Flutter", style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));
            }, child: Text("Click Me", style: TextStyle(
              color: Colors.white
            ),))
        ]
      ),
    );
  }
}