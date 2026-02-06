import 'package:flutter/material.dart';
import 'package:food_delivery_app/animation.dart';
import 'package:food_delivery_app/homePage.dart';


class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/start.jpg') ,
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),])
          ),
          child: Padding(padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(1,Text("Taking Order For Delivery" ,style: TextStyle(color: Colors.white , fontSize: 45 , fontWeight: FontWeight.bold),),),
                SizedBox(height: 20,),
                FadeAnimation(2,Text("See restaurants nearby by \nAdding Location" ,
                  style: TextStyle(color: Colors.white , height: 1.4 , fontSize: 18),),),
                SizedBox(height: 80,),
                FadeAnimation(2.2 ,Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.orange])
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: FadeAnimation( 2.5 ,Text("Start" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),),
                  ),
                ),),
                SizedBox(height: 30,),
                Align(
                  child:FadeAnimation(3 ,Text("Now Delivery to your door 24/7" ,
                    style: TextStyle(color: Colors.white70 ,fontSize: 15),),),),
                SizedBox(height: 30,)
              ],),
          ),
        ),
      ),
    );
  }
}
