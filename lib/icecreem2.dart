import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'cart.dart';
import 'Products.dart';
class Icecreem2 extends StatefulWidget {
  Icecreem2({super.key});

  @override
  State<Icecreem2> createState() => _Icecreem2State();
}
final List<Prodect>iceCreems =[
  Prodect(
    name: ' نكهة شوكلاتة ',
    subtitle: "نكهة الشوكلاتة مع اللوز",
    price: 87.0,

    imageurl: 'images/a1.jpg',
  ),
  Prodect(
    name: 'نكهة الشوكلاتة مع الفراولة',
    subtitle: 'نكهة الشوكلاتة مع الفراولة مع صوص فانليا ',
    price: 875.0,

    imageurl: 'images/a2.jpg',
  ),
  Prodect(
    name: 'نكهة الكرز',
    subtitle: 'نكهة الكرز مع قطع فراولة ',
    price: 73.0,
    imageurl: 'images/a3.jpg',
  ),
  Prodect(
    name: 'نكهة الفراولة',
    subtitle: 'نكهةالفراولة مع صوص الفراولة وحبيبات زينة',
    price: 27.0,
    imageurl: 'images/a4.jpg',
  ),
];
class _Icecreem2State extends State<Icecreem2> {
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
        iconTheme: IconThemeData(color: Colors.white),
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