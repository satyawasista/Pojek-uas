import 'package:flutter/material.dart';

void main() => runApp(Registrasi()); 
  class Registrasi extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black
        ),
        home: Login(),
      );
    }
  }
class Login extends StatefulWidget {
  @override
  
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors. white12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              width: 100,
              height:100,
                ),

            SizedBox(height: 20,),
            
              Text(" REGISTRASI ADVERTISER ", style: TextStyle(fontSize: 20,color: Colors.red),),
              
              SizedBox(height: 20,),
              
              Text(" Please complete form to sign up ", style: TextStyle(fontSize: 10,color: Colors.black87),),
              SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Passsword",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              
              SizedBox(height: 10,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

               Text(" Personal Info ", style: TextStyle(fontSize: 10,color: Colors.black87),),

              SizedBox(height: 10,),

             TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Real name",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Real name",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Phone number",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "phone number",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),
               SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

               SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "City of interest",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "City of interest",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

               SizedBox(height: 20,),

               Text(" Business Info ", style: TextStyle(fontSize: 10,color: Colors.black87),),

              SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Business name",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Business name",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),
               SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: "Job title",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Job title",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

               SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    hintText: " Business category",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "Business category",
                    labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              Card( 
                color: Colors. red,
                elevation: 10,
                child: Container(
                  height: 40,
                  width: 100,
                  child: Center(
                  child: Text ("SIGN UP", style: TextStyle(fontSize: 15,color: Colors.white),),
                  )
                )
              )
          ]
          )
      )
      )
    );
  }
}