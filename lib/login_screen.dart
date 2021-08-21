import 'package:asdasdasf/recgiter.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  static const url = 'https://www.pngmagic.com/product_images/sky-blue-hd-background-image-for-banner.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(

          decoration: BoxDecoration(
              image:DecorationImage(
                  image: NetworkImage( url ),
                  fit: BoxFit.cover
              )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon:Icon( Icons.email,color: Colors.blue,),
                    labelText: 'Username',
                    hoverColor: Colors.white
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  suffixIcon: Icon( Icons.remove_red_eye,color: Colors.blue,),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\t have an account ?',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  TextButton(onPressed: (){},
                      child: Text('Register Now'))
                ],
              ),
            ],
          )
      ),

    );
  }
}
