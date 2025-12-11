import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Product Listing '),),
          body: ListView(
            children: [
              Row(
                children: [
                  Image.asset('images/2.jpg',width:100,height: 100,),

                  Expanded(
                    child: Column(
                      children: [

                        Text('iPhone',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 10,),
                        Text('iPhone is the slylist phone ever'),
                        SizedBox(height: 10,),
                        Text('price: 1000'),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('images/1.jpg',width:100,height: 100,),

                  Expanded(
                    child: Column(
                      children: [

                        Text('Pixel',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Pixel is most featureful phone ever'),
                        SizedBox(height: 10,),
                        Text('price: 800'),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('images/3.jpg',width:100,height: 100,),

                  Expanded(
                    child: Column(
                      children: [

                        Text('Laptop',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Laptop is most productive development tool'),
                        SizedBox(height: 10,),
                        Text('price:2000'),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/1.jpg',width:100,height: 100,),

                  Expanded(
                    child: Column(
                      children: [

                        Text('Tablet',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Tablet the most useful device ever for meetinfg '),
                        SizedBox(height: 10,),
                        Text('price: 1500'),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('images/4.jpg',width:100,height: 100,),

                  Expanded(
                    child: Column(
                      children: [

                        Text('Pen Drive',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('iPhone is the slylist phone ever'),
                        SizedBox(height: 10,),
                        Text('price: 6000'),


                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )

    );
  }}