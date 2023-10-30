import 'package:bmi_calculator/login_singup_welcame_screen/singup.dart';
import 'package:flutter/material.dart';

class WelcameScreen extends StatelessWidget {
  const WelcameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 60),
                width: width/1.1,
                height: 230,
                child: Image.asset("assets/img.png")
            ),
            //app title
            const Text("let's help you get better!", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            // app decription
            SizedBox(height: 20,),
            const Text("This app is for calculate boy mas \n  index (BMI) and you can save your \n  body information like weight. \n   how to maintain you health",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 50,),
            Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.purple.shade700,
                borderRadius: BorderRadius.circular(13),
              ),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (cxt)=> SignUp()));
                  },
                  child: Center(child: const Text("Get started", style: TextStyle(fontSize: 30,color: Colors.white),))),
            ),
          ],
        ),
      ),
    );
  }
}
