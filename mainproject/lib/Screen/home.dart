import 'package:crashcourse2/Screen/list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome To"),
              Text(
                "Plan IT",
                style:
                TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
              ),
              SizedBox(height: screenHeight * 0.5),
              Text("Your Personal management and planning solution"),
              SizedBox(height: screenHeight * 0.02),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> MyList()));
                  },
                  child: Text("Lets get started")
              ),
            ],
          ),
        ),
      ),
    );
  }





}