import 'package:flutter/material.dart';
import 'package:untitled2/HomePage.dart';

void main() {
  runApp(HomePage());
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DP TODO",
      home: Scaffold(
        backgroundColor: Color(0xffe9edf3),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffe9edf3),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            )
          ],
          title: Text(
            "DP TODO",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: ListView(
          children: [
            Padding(padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "ALL TODO Tasks",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            //Container
            // for multiple ontainers
            for(int i=0; i<5; i++)

              Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfffefefe),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      7.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Make Yputube Video at 4.30 PM. Flutter Video.",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.mode_edit_outline_outlined,
                                color: Colors.blue,
                                size: 5,
                              ),
                              Icon(Icons.delete_forever_outlined,
                                color: Colors.red,
                                size: 5,
                              ),
                              Icon(Icons.done_outline,
                                color: Colors.green,
                                size: 5,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

