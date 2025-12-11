import 'package:flutter/material.dart';
import 'singup.dart';



class Wellcame extends StatefulWidget {
  const Wellcame({super.key});

  @override
  State<Wellcame> createState() => _WellcameState();
}

class _WellcameState extends State<Wellcame> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
      alignment: Alignment.center,
      children: [
      Container(
              width: double.infinity,
              height: double.infinity,


              child:Image.asset('images/h.jpg',fit:BoxFit.cover,),),

    Positioned(

        left: 20,
        right: 20,


        child:Container(
                width:300,
                height: 500,
                margin: EdgeInsets.all(10.0),

                padding:EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius:BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(0, 5)
                    ),
                  ],
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('مرحباً بكم ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,)),
SizedBox(height: 30,),
                    Text(' نرحب بكم في متجرنا المتواضع'" \n"
                        ' نتمنى ان تعجبكم منتجانتا ',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amberAccent,),
                    ),
                    SizedBox(height:200 ,)
                    ,
  Center(
    child: ElevatedButton(
                            onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> Singup()),
                              );
                            },
                            style: ButtonStyle(
                                elevation:MaterialStateProperty.all<double>(10.0) ,
                                shadowColor: MaterialStateProperty.all<Color>(Colors.black87)

                            ),

                            child: Text('تسجيل الدخول',style: TextStyle(fontSize:15,color:Colors.pinkAccent[200]),))
  )
                      ],
                    ),

                ),
              )


      ]
    ),


    );
  }
}