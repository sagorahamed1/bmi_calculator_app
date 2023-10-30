import 'package:bmi_calculator/bmi_screen/home_screen.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(14),
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFFeeeeee),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              Text("Welcome Back!", style: TextStyle(fontSize:40,fontWeight: FontWeight.w700),),
              const SizedBox(height: 10,),
              Text("Enter you phone number or email and password", style: TextStyle(fontSize: 21),),
              const SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter you email or phone",
                    hintStyle: TextStyle(color: Colors.black12),
                    labelText: "email or phone",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
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
                    hintStyle: TextStyle(color: Colors.black12),
                    labelText: "password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                ),
              ),const SizedBox(height: 20,),

              // confirm password
              InkWell(
                onTap: (){},
                child: Text("Forgot password?", style: TextStyle(fontSize: 24, color: Colors.deepPurple),),
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
                       Navigator.push(context, MaterialPageRoute(builder: (cxt)=> HomeScreen()));
                    },
                    child: Center(child: const Text("Sign in", style: TextStyle(fontSize: 30,color: Colors.white),))),
              ),
              const  SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an accont? ", style: TextStyle(fontSize: 19),),
                  InkWell(
                    onTap: (){

                    },
                    child: Text(" sign In",style: TextStyle(color: Colors.green,fontSize: 20),),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
