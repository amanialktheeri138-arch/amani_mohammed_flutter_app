import 'package:flutter/material.dart';
import 'homepage.dart';
import 'cartpage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' من نحن ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),

        ) ,
        centerTitle: true,
        backgroundColor:Colors.pink[300] ,

          iconTheme:  IconThemeData(color: Colors.white),

    ),
      drawer: Drawer(
        child:  ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration( color: Color(0xFFE91E63)),

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  CircleAvatar(
                radius: 30,
                backgroundImage: Image.asset('images/h.jpg').image ,),
              SizedBox(height: 20,),



              Text('مرحبا بك في ايسكريم ',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),
              ),

                ],
              ),
            ),
            ListTile(
              leading:Icon(Icons.home) ,
              title: Text('الرئيسية '),
              onTap: (){
                },
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.shopping_cart)  ,
              title:Text(" السلة ") ,
              onTap: (){

              },
            ),

            ListTile(
              leading:Icon(Icons.person)  ,
              title:Text('من نحن ') ,
              onTap: (){
                 },
            ),
          ],
        ),
      ),

      body:

      Column(

        children: [

        SizedBox(height: 20),
          Row(

            mainAxisAlignment:MainAxisAlignment.spaceAround ,

            children: [



          // ---------------- الشخص الأول ----------------


            Column(
              children:  [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:Image.asset('images/amani.jpg').image ,


                          ),
                    SizedBox(height: 10,),
                Text("أماني بن الشين ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),


              ],
            ),

              Column(
                children:  [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:Image.asset('images/aaraf.jpg').image ,

                  ),

                  SizedBox(height: 10,),

                  Text("أعراف قيطع  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),


                ],
              ),
      ],
          ),



           SizedBox(height: 40),
    Positioned(

    left: 20,
    right: 20,


    child:Container(
    width:300,
    margin: EdgeInsets.all(10.0),

    padding:EdgeInsets.all(20.0),
    decoration: BoxDecoration(
    color: Colors.pink[300],
    borderRadius:BorderRadius.circular(15),
    boxShadow: [
    BoxShadow(
    color: Colors.white60,
    blurRadius: 10,
    offset: Offset(0, 5)
    ),
    ],
    ),
    child: Column(
      children: [// --------- نص التواصل ---------
      Text(
      "يمكنكم التواصل معنا على الآتي:",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),

      SizedBox(height: 20),

      // --------- انستقرام ---------
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(Icons.camera_alt, size: 30, color: Colors.purple),
          SizedBox(width: 10),
          Text("انستقرام", style: TextStyle(fontSize: 18)),
        ],
      ),
        SizedBox(height: 8),
         Text(
          " ice_caream :يوزر الحساب",
          style: TextStyle(fontSize: 16),
        ),

      SizedBox(height: 25),

      // --------- واتساب ---------


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(Icons.phone, size: 30, color: Colors.green),
              SizedBox(width: 10),
              Text("واتساب", style: TextStyle(fontSize: 18)),
            ],
            ),
            SizedBox(height: 8),
              Text(
            "رقم الهاتف: 770000000",
            style: TextStyle(fontSize: 16),
           ),


             SizedBox(height: 40),



])
      ),
    ),
  ]
    ),




    );
  }
}