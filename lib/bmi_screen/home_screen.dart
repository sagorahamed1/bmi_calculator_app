import 'package:bmi_calculator/bmi_screen/bmi_for_male.dart';
import 'package:bmi_calculator/model/service_class.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List getService (){
    List list = [];
    list.add(Service(serviceName: "BMI for male", picture: "assets/male.png"));
    list.add(Service(serviceName: "BMI for female", picture: "assets/female.png"));
    list.add(Service(serviceName: "heath Tip", picture: "assets/img.png"));
    return list;
  }
  
  
  @override
  Widget build(BuildContext context) {
    var service = getService();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFeeeeee),
        leading: const Icon(Icons.menu,color: Colors.green,),
        centerTitle: true,
        title: const Text("BMI practice",style: TextStyle(color: Colors.green),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.person,color: Colors.green,)),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xFFeeeeee),
        child: GridView.builder(
            itemCount: service.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    if(index == 0){
                      Navigator.push(context, MaterialPageRoute(builder: (cxt)=> BmiMale(services: getService()[index],)));
                    }
                    else if(index == 2){
                      // Navigator.push(context, MaterialPageRoute(builder: (cxt)=> ()));
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (cxt)=> BmiMale(services: getService()[index],)));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("${getService()[index].picture}"),
                        const SizedBox(height: 6,),
                         Text("${getService()[index].serviceName}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              );
            },),
      ),
    );
  }
}
