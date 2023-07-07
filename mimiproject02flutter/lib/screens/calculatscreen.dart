import 'package:flutter/material.dart';

class Calculatescreen extends StatefulWidget {
  const Calculatescreen({Key? key});

  @override
  State<Calculatescreen> createState() => Calculatescreenstate();
}

class Calculatescreenstate extends State<Calculatescreen> {
  int selectedvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 188, 239, 239),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                children: [
                  const TextField(
                    decoration: InputDecoration(hintText: "First number"),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedvalue,
                    title: const Text("+"),
                    onChanged: (value) {
                      setState(() {
                        selectedvalue = value as int;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedvalue,
                    title: const Text("-"),
                    onChanged: (value) {
                      setState(() {
                        selectedvalue = value as int;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: selectedvalue,
                    title: const Text("*"),
                    onChanged: (value) {
                      setState(() {
                        selectedvalue = value as int;
                      });
                    },
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "Second number"),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("Calculate")
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
