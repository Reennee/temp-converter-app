import 'package:flutter/material.dart';
import 'Temperture/Temp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Conversion Application'),
          titleTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          actions: const [
            Tooltip(
              message: 'Speed',
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.deepOrange, // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Temperturepage()));
                          },
                          icon: const Icon(
                            Icons.thermostat,
                            size: 120,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                      const Text(
                        'Temp Converter',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
