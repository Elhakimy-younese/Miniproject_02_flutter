import 'package:flutter/material.dart';
import 'package:mimiproject02flutter/faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Mini project 02'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String fullname = Faker().generateFullName();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("mini project 02"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 188, 239, 239),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Hi ", style: TextStyle(fontSize: 15)),
                      Text(
                        " $fullname ",
                        style: const TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        ),

                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            print("hello");
                          },
                          child: const Icon(
                            Icons.info,
                            color: Colors.blueAccent,
                          ))
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        print("hi   ");
                      },
                      child: const Text("Go"))
                ],
              ),
            ),
          ),
        ));
  }
}
