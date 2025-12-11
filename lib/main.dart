import 'package:flutter/material.dart';
import 'secand_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            final result = await Navigator.push<bool>(
              context,
              MaterialPageRoute(
                builder: (context) =>  Secand(),
              ),
            );
            if (result != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(result ?'تمت الموافقة على الشروط':'تم رفض الشروط')),
              );
            }
          },
          child:  Text('Go to selection screen'),
        ),
      ),
    );
  }

}