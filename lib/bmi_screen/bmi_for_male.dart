
import 'package:bmi_calculator/model/service_class.dart';
import 'package:flutter/material.dart';

class BmiMale extends StatefulWidget {
    final Service  services;
  const BmiMale({super.key, required this.services});

  @override
  State<BmiMale> createState() => _BmiMaleState();
}

class _BmiMaleState extends State<BmiMale> {
   num bmi = 0;
   String status = "Your BMI Status!";

   // some problem hare
   // the problem is, the BMI had print after status print. when i pass ontap secound time;
   // i have to solve this problem

   /*getBmi(height, weight){
     setState(() {
       bmi = bmi;
       return bmi = (weight) / pow((height), (height));
     });
   }
   @override

  @override
  void setState(VoidCallback fn){
    if(bmi < 18.50){
      status = "You BMI is Underweight";
    }
    else if (bmi > 18.5 && bmi <= 24.9){
      status = "Congratution! your featness is good";
    }
    else if(bmi > 24.9 && bmi <= 39.9){
      status = "Your weight is Overweight";
    }
    else{
      status = "Obese";
    }
    super.setState(fn);
  }*/
   
  TextEditingController feetController = TextEditingController();
  TextEditingController inchesController = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor:Colors.green,
        title: Text("${widget.services.serviceName}",style: const TextStyle(color: Colors.white,fontSize: 25),),
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xFFeeeeee),
        child: Column(
          children: [
           const SizedBox(height: 30,),
           const Text("Type your feet, inches, and weight", style: TextStyle(color: Colors.green,fontSize: 26,fontWeight: FontWeight.bold),),
           const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 24),
                    child:const Text("FEET", style: TextStyle(color: Colors.green,fontSize: 32,fontWeight: FontWeight.bold),)),
                Container(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: TextField(
                      controller: feetController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "feet",
                        hintStyle: TextStyle(color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Center(child: Text("Ft"))
                )
              ],
            ),
           const SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               const SizedBox(height: 60,),
               const Text("INCHE", style: TextStyle(color: Colors.green,fontSize: 31,fontWeight: FontWeight.bold),),
                Container(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: TextField(
                      controller: inchesController,
                      keyboardType: TextInputType.number,
                      decoration:const InputDecoration(
                          hintText: "inches",
                          hintStyle: TextStyle(color: Colors.green),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                      shape: BoxShape.circle
                    ),
                    child: const Center(child: Text("Inc"))
                )
              ],
            ),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              const SizedBox(height: 60,),
               const Text("WEIGHT", style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
                Container(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: TextField(
                      controller: weightcontroller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Weight",
                          hintStyle: TextStyle(color: Colors.green),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                    ),
                    child: Center(child: Text("KG"))
                )
              ],
            ),const SizedBox(height: 30,),


            Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)
              ),
              child: InkWell(
                onTap: (){

                   double feet = double.parse(feetController.text) * 0.3048;
                   double inche = double.parse(inchesController.text) * 0.0254;
                   double weight = double.parse(weightcontroller.text);

                   double height = feet + inche;
                   double result = weight / (height * height);

                   setState(() {
                     bmi = result;

                     // status calculation
                     if(bmi < 18.50){
                       status = "You BMI is Underweight";
                     }
                     else if (bmi > 18.5 && bmi <= 24.9){
                       status = "Congratution! your featness is good";
                     }
                     else if(bmi > 24.9 && bmi <= 39.9){
                       status = "Your weight is Overweight";
                     }
                     else{
                       status = "Obese";
                     }


                     // color set for status
                     if(bmi < 18.50){
                       containercolor = Colors.purple;
                     }
                     else if (bmi > 18.5 && bmi <= 24.9){
                       containercolor = Colors.green;
                     }
                     else if(bmi > 24.9 && bmi <= 39.9){
                       containercolor = Colors.red;
                     }
                     else{
                       containercolor = Colors.red;
                     }

                   });
                },
                child: const Center(child: Text("Enter your BMI status", style: TextStyle(fontSize: 23, color: Colors.green),)),
              ),
            ),
            const SizedBox(height: 40,),
            Text("BMI : ${bmi}",style: const TextStyle(fontSize: 25,color: Colors.green),),

            const SizedBox(height: 24,),

            Text("Status : ${status}",style: TextStyle(color: containercolor, fontSize: 20),)

          ],
        ),
      )
    );
  }

  Color containercolor = Colors.teal;
}
