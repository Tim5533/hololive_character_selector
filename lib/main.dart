import 'package:flutter/material.dart';
import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hololive App'),
          backgroundColor: Colors.teal[200],
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.question_mark),
          backgroundColor: Colors.teal[200],
            onPressed: () {
            controller.onTap();
            setState(() {
          });

        },),
        body: SafeArea(
          child: Column(children: [
            Container(
              height: 40,
              width: 40,
            ),

            Column(
                children: [
                  Center(
                    child: Text(
                      controller.name,
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 5,
                  ),
                  Center(
                    child: Text(
                      controller.name_2,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

            Padding(
              padding: const EdgeInsets.all(40),
              child: Center(
                child: Image.asset("${controller.imageLocation}"),
                  ),
              ),
          ]),
        ),
      ),
    );
  }
}
