import 'package:bmi_calculator/bmi_screen/home_screen.dart';
import 'package:bmi_calculator/login_singup_welcame_screen/signin.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: const Color(0xffeeeeee),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              const Text("Welcome to this app!", style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),
              const SizedBox(height: 10,),
              const Text("please fill up this form", style: TextStyle(fontSize: 21),),
              const SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter you email or phone",
                  hintStyle: const TextStyle(color: Colors.black12),
                  labelText: "email or phone",
                  labelStyle:const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              const SizedBox(height: 20,),

              // paaword
              TextField(
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter you password",
                    hintStyle: const TextStyle(color: Colors.black12),
                    labelText: "password",
                    labelStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),const SizedBox(height: 20,),

              // confirm password
              TextField(
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    hintText: "confirm password",
                    hintStyle: const TextStyle(color: Colors.black12),
                    labelText: "confirm password",
                    labelStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              const  SizedBox(height: 80,),

              //signin buttom
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.purple.shade700,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (cxt)=> const HomeScreen()));
                    },
                    child: const Center(child: const Text("Sign up", style: TextStyle(fontSize: 30,color: Colors.white),))),
              ),
              const  SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("already you have an accont? ", style: TextStyle(fontSize: 19),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (cxt)=> SignIn()));
                    },
                    child:const Text(" sign in",style: TextStyle(color: Colors.green,fontSize: 20),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
