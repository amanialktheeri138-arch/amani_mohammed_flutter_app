
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'indextext.dart';
class Singup extends StatefulWidget {
  Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  final _forKey = GlobalKey<FormState>();

  TextEditingController _controller1= TextEditingController();
  TextEditingController _controller2= TextEditingController();
  TextEditingController _controller3= TextEditingController();
  void submitForm() {
    if (_forKey.currentState!.validate()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Indexpage()));

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
            alignment: Alignment.center,
            children: [

              Container(
                  width: double.infinity,
                  height: double.infinity,


                  child:Image.asset('images/h.jpg',fit:BoxFit.cover,)
              ),


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
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(0, 5)
                        ),
                      ],
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Form(
                          key: _forKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _controller1,
                                decoration: InputDecoration(labelText: 'Name',
                                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(30.0))),




                                validator: (value){
                                  if(value==null ||value.isEmpty ){
                                    return 'please enter your name';
                                  }
                                  return null;
                                },

                              ),
                              SizedBox(height: 30,),
                              TextFormField(
                                controller: _controller2,
                                decoration: InputDecoration(labelText: 'Email',
                                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(30.0))),

                                validator: (value){
                                  if(value==null ||value.isEmpty ){
                                    return 'please enter your Email';
                                  }
                                  return null;
                                },

                              ),
                              SizedBox(height: 30,),
                              TextFormField(
                                controller: _controller3,
                                decoration: InputDecoration(labelText: 'Password',
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),

                                obscureText: true,
                                validator: (value){
                                  if(value==null ||value.isEmpty ){
                                    return 'please enter your Password';
                                  }
                                  return null;
                                },



                              ),
                              SizedBox(height: 40,),
                              ElevatedButton(onPressed:submitForm,
                                  style: ButtonStyle(
                                      elevation:MaterialStateProperty.all<double>(10.0) ,
                                      shadowColor: MaterialStateProperty.all<Color>(Colors.black)

                                  ),child:Text('ارسال'))

                            ],
                          ),
                        ),

                      ],
                    ),

                  )
              ),
            ]
        )

    );

  }
}