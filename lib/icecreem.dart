import 'package:flutter/material.dart';
import 'Products.dart';

import 'cartpage.dart';
import 'cart.dart';

import 'Products.dart';
class Icecreem extends StatefulWidget {
  const Icecreem({super.key});

  @override
  State<Icecreem> createState() => _IcecreemState();
}


final List<Prodect>iceCreems =[
  Prodect(
    name: 'نكهة الفستق ',
    subtitle: "نكهة الفستق مع زينة اللوز",
    price: 87.0,

    imageurl: 'images/k1.jpg',
  ),
  Prodect(
    name: 'نكهة الفراولة',
    subtitle: 'نكهة الفراولة مع حبيبات زينة',
    price: 875.0,

    imageurl: 'images/k2.jpg',
  ),
  Prodect(
    name: 'نكهة الشوكلاتة',
    subtitle: 'نكهة الشوكلاتة مع صوص الشوكلاتة ',
    price: 73.0,
    imageurl: 'images/k3.jpg',
  ),
  Prodect(
    name: 'نكهة الفانليا',
    subtitle: 'نكهة الفانلينا مع صوص كراميل ',
    price: 27.0,
    imageurl: 'images/k4.jpg',
  ),
];

class _IcecreemState extends State<Icecreem> {
  void addToCart( Prodect iceCreem){
    cartItem.add(iceCreem );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('ايسكريم', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
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

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,

          ),
          itemCount: iceCreems.length,
          itemBuilder: (context,index) {
            return  Container(

              width: 150,
              height: 190,
              margin:  EdgeInsets.all(16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color:  Colors.black.withOpacity(0.6),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children: [

                  CircleAvatar(
                    radius:40,
                    backgroundImage: AssetImage(iceCreems[index].imageurl),

                  ),
                  SizedBox(height: 12,),
                  Text(iceCreems[index].name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), maxLines: 1,),
                  SizedBox(height: 4,),
                  Text(iceCreems[index].subtitle,style: TextStyle(fontSize: 10,color: Colors.grey), maxLines: 1,),
                  Spacer(),
                  Row(
                    children: [
                      Text( iceCreems[index].price.toString() ,style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15),),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          addToCart(iceCreems[index]);
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
    );
  }
}