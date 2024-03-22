import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // Create the Future Function

/*  Future<String> getData() {
      return Future.delayed(Duration(seconds: 3), () {
        return "Data Loaded";
      });
}*/

 /* Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3), () {
      return "Data Loaded";
    });
  }*/

  Future<String> getData() async =>
      await Future.delayed(Duration(seconds: 3), () {
      return "Data Loaded";
    });
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Future Builder Widget ",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future:getData(),
          builder: (context,snapshot){

            if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }

            if(snapshot.hasData){
              return Text(snapshot.data.toString());
            }else{
              return Text(snapshot.error.toString());
            }


          },
        ),
      )
    );
  }
}
