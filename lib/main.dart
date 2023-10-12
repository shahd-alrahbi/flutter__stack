import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
        debugShowCheckedModeBanner: false,

    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
      
      actions: [Icon(Icons.more_vert,color: Colors.black,)]),



      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: 740,
        width: 400,
        color: Color.fromARGB(255, 245, 243, 243),
        
        child: Stack(
          children:[
            Positioned(
       
            child: Container(
          width: 370,
          height: 200,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("assets/yoga1.jpg"),fit: BoxFit.cover)
            ),
            ),
              ),
            
     
      Positioned(
        left: 30,
        top: 220,
        child: Text("Basic Yoga For Beginners", style:TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontSize: 18)),
      ),

       Positioned(
        top: 260,
        left: 20,
        child:Row(
  
            children: [
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Text("4.8"),
              SizedBox(width: 140,),
              Text("125 reviews", style: TextStyle(color: Colors.grey),)
            ],
            )),

           Positioned(
             top: 290,
             left: 20,
            child: Container(
              width: 370,
              height: 110,
              child: Text("It’s time to roll out your yoga mat and discover the combination of physical and mental exercises that for thousands of years have hooked yoga practitioners around the globe. The beauty of yoga is that you don’t have to be a yogi or yogini to reap the benefits.", style: TextStyle(color: Colors.grey),))) ,

              Positioned(
                 top: 370,
                 left: 20,
                child: Row(children: [
                  Container(
                    width: 150,
                    height: 80,
                    child:Row(children: [
                      Icon(Icons.view_column_outlined,color: Colors.red,),
                      Text("Laravel",style: TextStyle(color: Colors.grey),),
                      Text("01",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],)
                  )
                ],)),

                   Positioned(
                 top: 370,
                 left: 150,
                child: Row(children: [
                  Container(
                    width: 150,
                    height: 80,
                    child:Row(children: [
                      Icon(Icons.list_alt_outlined, color: Colors.red,),
                      Text("Week",style: TextStyle(color: Colors.grey),),
                      Text("01",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],)
                  )
                ],)),

                    Positioned(
                 top: 370,
                 left: 300,
                child: Row(children: [
                  Container(
                    width: 150,
                    height: 80,
                    child:Row(children: [
                      Icon(Icons.timer_outlined, color: Colors.red,),
                      Text("Min",style: TextStyle(color: Colors.grey),),
                      Text("19",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],)
                  )
                ],)),

                    Positioned(
                 top: 450,
                 left: 20,
                child: Row(children: [
                 Text("Schedule", style:TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontSize: 18)),
                 SizedBox(width: 220,),
                 Text("See All >",style: TextStyle(color: Colors.grey),),
                ],)),



                 Positioned(
                   top: 480,
                   left: 17,
                   child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/yoga3.webp" ,width: 170, height: 130, fit: BoxFit.cover,),
                        ),
                 ),

                  Positioned(
                   top: 480,
                   left: 210,
                   child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/yoga2.jpg" ,width: 170, height: 130, fit: BoxFit.cover,),
                        ),
                 ),

                   Positioned(
                   top: 620,
                   left: 28,
                   child: Text("Gym For Beginners",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),

                    Positioned(
                   top: 620,
                   left: 240,
                   child: Text("Gym For Beginners",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),

                 Positioned(
                  bottom: 0,
                 
                  child:
                 Container(
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),color: Color.fromARGB(255, 45, 45, 226)),
                   child: MaterialButton(
                    child: Text("ADD TO",style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Flushbar(
                        title:  "Hey Ninja",
                        message:  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                        duration:  Duration(seconds: 3),
                      ).show(context);
                               },
                             ),
                 ), 
                 
                 ),
                     
    ],
  ),
)
      
      

          
      ),
    
  
      
    );
  }


}