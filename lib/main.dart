import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic list',
      debugShowCheckedModeBanner: true,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

   mySnackBar(context, msg){
     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),));
   }

  var MyItems=[
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Naeem"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Rahman"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Anis"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Younus"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Sheikh"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Shuvro"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Shazid"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"Jabir"},
    {"img":"https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?t=st=1722278822~exp=1722282422~hmac=f8da608a897192d04575e3bbb3c0ab13ccb7d6e8c44f49c3430a1f1d848e23e6&w=740","title":"AR"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.grey.shade400,
      ),
        body: Column(
          children: [
            Expanded(
            child: ListView.builder(
              itemCount: MyItems.length,
              itemBuilder: (context,index){
                return GestureDetector(
                  onDoubleTap: (){
                    mySnackBar(context, MyItems[index]['title']);
                    print("josdgnds");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 220,
                    child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
                  ),
                );
              },
            ),
                  ),
          ],
        ));
  }
}

