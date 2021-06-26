import 'package:fitnessapplication/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name= "";
  final _formKey= GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/login_page.png.png",fit: BoxFit.cover,
      
            ),
            SizedBox(
              height:  20.0,
            ),
            Text("Welcome to Ragnar Fitness $name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height:  20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0) ,
              ),
            Column(children: [
              TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
              validator: (value){
                if (value.isEmpty){
                  return "Username cannot be Empty";
                }
                return null;
              }, 
              onChanged: (value){
                name= value;
                setState(() {
                  
                });
              },         
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              validator: (value){
                if (value.isEmpty){
                  return "Password cannot be empty";
      
                }
                else if (value.length < 6){
                  return "Passwrod length atleast 6";
                }
                return null;
              },          
            ),
            SizedBox(
              height:  20.0,
            ),
      
            Container(
                width: 150,
                height: 50,
                color: Colors.redAccent,
                alignment: Alignment.center,
                child: Text(
                "login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                
               ),
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
               ),
            
            
            
              ),
            
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(minimumSize: Size(150,40)),
              onPressed: (){
                Navigator.push(context, MyRoutes.HomeRoute),
              },
              )
            
            ],
            ),
      
          
          
          ],
        ),
      ),

    );
      
    
  }
}