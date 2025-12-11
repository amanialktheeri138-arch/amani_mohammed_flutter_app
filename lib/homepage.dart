import 'package:flutter/material.dart';
import 'about.dart';
import 'cartpage.dart';
import 'icecreem.dart';
import 'icecreem2.dart';
import 'icecrem3.dart';
import 'cart.dart';

import 'Products.dart';
final List<Prodect>prodects =[
  Prodect(
    name: ' ليالي البيض ',
    subtitle: "نكهة الفانيلياوالشوكلاته ",
    price: 87.0,

    imageurl: 'images/m1.jpg',
  ),
  Prodect(
    name: 'عرائسي',
    subtitle: 'نكهة الفرولة والمانجو ',
    price: 875.0,

    imageurl: 'images/m2.jpg',
  ),
  Prodect(
    name: 'مشكل ',
    subtitle: 'نكهات  مشكلة ',
    price: 73.0,
    imageurl: 'images/m3.jpg',
  ),
  Prodect(
    name: 'كرسبي',
    subtitle: 'ويفر ايسكريم',
    price: 27.0,
    imageurl: 'images/m4.jpg',
  ),
];


class Hompage extends StatefulWidget {
  Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();

}

class _HompageState extends State<Hompage> {

  void addToCart( Prodect product){
    cartItem.add(product);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:Text(' ايسكريم', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ) ,
          backgroundColor: Color(0xFFE91E63),
          iconTheme:  IconThemeData(color: Colors.white),
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Cartpage()));

                }
                , icon: Icon(Icons.shopping_cart)),

             CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,

              child: Icon(Icons.person,size: 20 ,color:Color (0xFFE91E63),),

            ),
            SizedBox( width: 10,),
          ],
        ),
        drawer: Drawer(
          child:  ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration( color: Color(0xFFE91E63)),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
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


SizedBox(height: 50,),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Icecreem())
                            );
                          },
                          child:

                          Container(
                            height:80 ,
                            width: 80,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:  Colors.black.withOpacity(0.6),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset:  Offset(0, 4),
                                ),
                              ],
                            ),

                              child:CircleAvatar(
                                radius: 30,
                                backgroundImage:  Image.asset('images/c3.jpg').image,),
                               ),


                          ),

                        SizedBox(width: 20,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Icecrem3())
                            );
                          },
                          child:
                          Container(
                            height:80 ,
                            width: 80,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:  Colors.black.withOpacity(0.6),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset:   Offset(0, 4),
                                ),
                              ],
                            ),

                            child:CircleAvatar(
                              radius: 30,
                              backgroundImage:  Image.asset('images/c1.jpg').image,),


                          ),
                        ),
                        SizedBox(width: 20,),

                        GestureDetector(
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Icecreem2())
                            );
                          },
                          child:

                          Container(
                            height:80 ,
                            width: 80,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:  Colors.black.withOpacity(0.6),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset:  const Offset(0, 4),
                                ),
                              ],
                            ),

                            child:CircleAvatar(
                              radius: 30,
                              backgroundImage:  Image.asset('images/c2.jpg').image,),


                          ),
                        ),



                      ]


                  ),

                SizedBox(height:20,),

                Divider(),

                Text(" أصناف مميزة ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink),),
Expanded(child:
                  ListView .builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: prodects.length,
                      itemBuilder: (context,index){

                        return Container(
                          width: 180,
                          height: 280,
                          margin:  EdgeInsets.all( 16),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color:  Colors.black.withOpacity(0.6),
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset:   Offset(0, 4),
                              ),
                            ],

                          ),

                          child:
                          Column(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(prodects[index].imageurl),

                              ),
                              SizedBox(height: 12,),
                              Text(prodects[index].name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold), maxLines: 1,),
                              SizedBox(height: 4,),
                              Text(prodects[index].subtitle,style: TextStyle(fontSize: 12,color: Colors.grey), maxLines: 1,),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text( prodects[index].price.toString() ,style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16),),

                                  GestureDetector(
                                    onTap: (){
                                      addToCart(prodects[index]);
                                    },
                                    child:
                                    CircleAvatar(

                                      backgroundColor:  Colors.pinkAccent,
                                      child: Icon(Icons.add,color: Colors.white,),

                                    )
                                    ,
                                  ),
                                ],
                              )
                            ],

                          ),

                        );
                      }
                  ),
        ),





              ] ,

            ),


    );













  }
}