import 'package:dars/far.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шишро хис кунед"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text("Мои курсы",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              
             
             
             
           
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.only(bottom: 40),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Name(
                    post: names[index],
                    rang: images[index],
                  );
                },
              ),
            ),
          
        
            ],
          ),
        ),
      ),
    ),
    );
  }
}