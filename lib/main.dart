import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مسبحة الكترونية',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
     
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int counter1_ =0;
 int counter2_ =0;
 int counter3_ =0;
String message1 =' ابدا';

  int counter =0;

 
//دوال التحديث محتوى الرسالة والعداد

  void _incrementCounter1() {
    setState(() {
      message1='سبحان لله';
      counter1_++;
      counter =counter1_;
    });
  }


  void _incrementCounter2() {
    setState(() {
      message1=' الحمد لله';
      counter2_++;
      counter =counter2_;
    });
  }
void _incrementCounter3() {
    setState(() {
      message1=' الله اكبر';
      counter3_++;
      counter =counter3_;
    });
  }
  void reset(){
setState(() {
    message1 = 'ابدا ';
    counter1_ = 0;
    counter2_ = 0;
    counter3_ = 0;
    counter = 0;
  });

  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('مسبحة الكترونية'),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(202, 255, 116, 248),
         
       //جسم الذي يحتوي على مكونات المسبحة من ازرار ونص وعداد 
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
         
            Text(message1,style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 241, 255, 51),fontSize: 20)),
            Text("$counter" ,style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 153, 0),fontSize: 20)),
            
            SizedBox(height: 50),
         
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
            ElevatedButton(onPressed: _incrementCounter1, 
            child: Text("سبحان لله",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber,fontSize: 20))),
             SizedBox(width: 20),
           ElevatedButton(onPressed: _incrementCounter2, 
           child: Text("الحمد لله",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber,fontSize: 20),)),
            SizedBox(width: 20),
           ElevatedButton(onPressed: _incrementCounter3, 
           child: Text("الله اكبر",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber,fontSize: 20),)),]),
            SizedBox(height: 40),
           ElevatedButton( onPressed: reset ,child: Text("مسح",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 185, 1, 1),fontSize: 20) ),
),
         
          ] 
           ),
        ),
      backgroundColor: const Color.fromARGB(143, 118, 250, 239),    
      );
      
  }
}
