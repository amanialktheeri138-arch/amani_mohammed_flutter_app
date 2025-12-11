import 'package:flutter/material.dart';
import  "cart.dart" ;
import 'homepage.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  int selectedPayment = -1;
  int selectedLocation = -1;

  double getTotal() {
    double total = 0;
    for (var item in cartItem) {
      total += item.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartpage",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),


          centerTitle: true,
          backgroundColor:Colors.pink[300] ,

      iconTheme:  IconThemeData(color: Colors.white),

      ),

      body: cartItem.isEmpty
          ? Center(child: Text("السلة فارغة"))
          : Column(
        children: [

          // ----- قائمة المنتجات -----
          Expanded(
            child: ListView.builder(
              itemCount: cartItem.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    cartItem[index].imageurl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(cartItem[index].name),
                  subtitle: Text("${cartItem[index].price} ر.س"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        cartItem.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 10),

          // ----- اختيار طريقة الدفع -----
          Text("طريقة الدفع", style: TextStyle(fontSize: 18)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedPayment == 0
                      ? Colors.green
                      : Colors.grey[300],
                  foregroundColor: selectedPayment == 0
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedPayment = 0;
                  });
                },
                child: Text("كاش"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedPayment == 1
                      ? Colors.green
                      : Colors.grey[300],
                  foregroundColor: selectedPayment == 1
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedPayment = 1;
                  });
                },
                child: Text("بطاقة"),
              ),
            ],
          ),

          SizedBox(height: 20),

          // ----- اختيار موقع التوصيل -----
          Text("موقع التوصيل", style: TextStyle(fontSize: 18)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedLocation == 0
                      ? Colors.blue
                      : Colors.grey[300],
                  foregroundColor: selectedLocation == 0
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedLocation = 0;
                  });
                },
                child: Text("البيت"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedLocation == 1
                      ? Colors.blue
                      : Colors.grey[300],
                  foregroundColor: selectedLocation == 1
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedLocation = 1;
                  });
                },
                child: Text("العمل"),
              ),
            ],
          ),

          SizedBox(height: 20),

          // ----- إجمالي السعر + زر تأكيد -----
          Text(
            "إجمالي السعر: ${getTotal()} ر.س",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              minimumSize: Size(200, 45),
            ),
            child: Text("تأكيد الطلب"),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }}