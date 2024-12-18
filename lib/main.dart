import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(
    ImageApp(),
  );
}

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  print("Text Button Pressed");
                },
                //onLongPress: () => "Text Button Long Pressed",
                child: Text(
                  "Text Button",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                child: Text(
                  "Elevated Button",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 248, 247, 247)),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.brown),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button 2 Pressed");
                },
                child: Text(
                  "Elevated Button 2",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 248, 247, 247)),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => states.contains(WidgetState.pressed)
                        ? Colors.blueAccent
                        : Colors.amber,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  print("OutLined Button  Pressed");
                },
                child: Text(
                  "OutLined Button",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 160, 24, 24)),
                ),
                style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all(
                  Colors.teal,
                )),
              ),
              IconButton(
                onPressed: () {
                  print('Icon Button Pressed');
                },
                icon: Icon(Icons.volume_down_outlined),
                color: Colors.black87,
                iconSize: 40,
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Button Pressed');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.deepOrange,
          splashColor: Colors.blueGrey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
