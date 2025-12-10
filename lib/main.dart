import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar: AppBar(title: Text('User Profile:Amani'),),
            body:Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          width:400,
                          height:190,
                          padding: EdgeInsets.all(30),
                          color: Colors.deepPurpleAccent,
                          ),
                      Positioned(
                        top: 20,
                        child:
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: Image.asset("image/amani.jpg").image,
                        ),),

                      Positioned(
                        bottom: 5,
                        child: Column(
                          children: [
                            Text('Amani Mohammed',style: TextStyle(fontSize: 20,color: Colors.white),),
                            SizedBox(height: 6,),
                            Text('Sofftware Devloper',style: TextStyle(fontSize: 18,color: Colors.orange),) ,

                          ],
                        ) ,
                      ),
                    ],
                  ),



                  Padding(padding:EdgeInsets.all(10.0),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Email',style: TextStyle(color: Colors.indigo),),
                        Text('amanialktheeri138@gmail.com'),
                      ],
                    ),),
                  Divider(),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone',style: TextStyle(color: Colors.indigo),),
                        Text('781593861'),
                      ],
                    ),),


                ]
            ))
    );}}