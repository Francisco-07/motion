import 'dart:async';
import 'package:app_motion/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Inicio extends StatefulWidget {
 static String id = "inicio";

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
   void initState(){
   super.initState();
   Timer(Duration(seconds: 16), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())));
 }
  Widget build(BuildContext context) {
  return Scaffold(
    
     body: Column(
       mainAxisAlignment:MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Image.asset('assets/img/BIMLogo.png', height: 100.0,),

         SizedBox(height: 50.0),
         SpinKitWanderingCubes(color: Colors.red),
       ],
     ),
     
      );
  }
}