import 'package:flutter/material.dart';
import 'registrasi.dart';
import 'badan/badan.dart';



void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget{
  
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/registrasi': (BuildContext context) =>new Registrasi(),
        'badan/badan': (BuildContext context) =>new Badan()
        },

      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
   @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
         Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 80.0, fontWeight: FontWeight.bold))),
                    Container(
                      child: Stack(
                        children: <Widget>[
                         Container(
                  padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child: Text(
                  'There',
                  style: TextStyle(
                    fontSize: 80.0, fontWeight: FontWeight.bold))),
                    Container(
                  padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: Text(
                  '.',
                  style: TextStyle(
                    fontSize: 80.0,color:Colors.red, fontWeight: FontWeight.bold))
                  ),
                 Container(
                   padding: EdgeInsets.only(top: 280.0, left: 20.0, right: 20.0),
                   child: Column(
                     children: <Widget>[
                       TextField(
                         decoration: InputDecoration(
                           labelText: 'EMAIL',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.bold,
                             color: Colors.grey
                           ),
                           focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(color: Colors.red)
                       ))),
                         Container(
                           padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
                           child: Column(
                             children: <Widget>[
                               TextField(
                                 decoration: InputDecoration(
                                   labelText: 'PASSWORD',
                                   labelStyle: TextStyle(
                                     fontFamily: 'montserrat',
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey
                                 ),
                                 focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(color: Colors.red)
                                 )
                                 ),
                                 obscureText: true, 
                             ),
                             SizedBox(height: 5.0),
                             Container(
                               alignment: Alignment(1.0, 0.0),
                               padding: EdgeInsets.only(top: 15.0, left: 20.0),
                               child: InkWell(
                                 child: Text('Forgot Password',
                                 style: TextStyle(
                                   color: Colors.red,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'Montserrat',
                                   decoration: TextDecoration.underline
                                 ))
                               ),
                             ),
                             SizedBox(height: 40.0),
                             Container(
                               height: 40.0,
                               child: Material(
                                 borderRadius: BorderRadius.circular(20.0),
                                 shadowColor: Colors.redAccent,
                                 color: Colors.red,
                                 elevation: 7,
                                 child: GestureDetector(
                                   onTap: () {Navigator.of(context).pushNamed('badan/badan');},
                                   child: Center(
                                     child: Text(
                                       'LOGIN',
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontFamily: 'Montserrat'
                                     ) 
                                   ),
                                 ),
                               )
                             )
                             ),
                             SizedBox(height: 20.0),
                             Container(
                               height: 40.0,
                               color: Colors.transparent,
                               child: Container(
                                 decoration: BoxDecoration(
                                   border: Border.all(
                                     color: Colors.black,
                                     style: BorderStyle.solid,
                                     width: 1.0,
                                   ),
                                   color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(20.0)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Center(
                                       child: Text('f',
                                       style: TextStyle(
                                         color: Colors.black12
                                       ))
                                     ),
                                     SizedBox(width: 10.0,),
                                     Center(
                                       child: Text('Log in with facebook',
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontFamily: 'Montserrat'
                                       )
                                     )
                                   ),
                                 ]

                               ),

                             ),
                            
                         )]
                       
                     ),
                   ),
                   SizedBox(height: 20.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:<Widget> [
                       Text('Belum Punya Akun?',
                       style: TextStyle(
                         fontFamily: 'montserrat',
                       ),),
                       SizedBox(width: 5.0),
                       InkWell(
                         onTap: () {
                           Navigator.of(context).pushNamed('/registrasi');
                         },
                         child: Text('Kuy Register',
                         style: TextStyle(
                           color: Colors.red,
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.underline,
                           
                         ),),
                       )

                     ],)
                 ]
                  ),
                ),
                    
                    
                      
                    
                  ],
                )

                )
              ]
                    )
         )
        ],
    

      ));
  }}
