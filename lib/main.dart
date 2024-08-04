import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      title: "Mod-10 assignment",
      debugShowCheckedModeBanner: true,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        // padding: EdgeInsets.all(18),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))
        )
    );
    return Scaffold(
      appBar: AppBar(
      title: Text("Greeting App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello, World!',style: TextStyle(
              color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20
            ),),
            Text('Welcome to Flutter!',style: TextStyle(
              fontSize: 20
            ),),
            SizedBox(
              height: 30,
            ),
            Image.network("https://images.pexels.com/photos/1496373/pexels-photo-1496373.jpeg?auto=compress&cs=tinysrgb&w=600",
              fit: BoxFit.cover,height: 300,width: 180,),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){mySnackBar("Button Pressed!", context);}, child: Text("Press me"),style: buttonStyle,),
          ],
        ),
      )
    );
  }
}

