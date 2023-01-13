import 'package:flutter/material.dart';

class ValidatorScreen extends StatefulWidget {
  const ValidatorScreen({super.key});

  @override
  State<ValidatorScreen> createState() => _ValidatorScreenState();
}

class _ValidatorScreenState extends State<ValidatorScreen> {
  TextEditingController userController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              // Form(
              //   key: formkey,
              //   child: TextFormField(
              //     controller: userController,
              //     autofocus: true,
              //     validator: (value) {
              //       return null;

              //     },
              //   ),
              // ),
              Expanded(
                child: Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: TextFormField(
                      controller: userController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Pease Enter name";
                        } else if (value.length < 4) {
                          return "Enter mim. 4 charctor";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter name",
                        labelText: "Enter name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (validter()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "process Data",
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  "submit",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  bool validter() {
    if (userController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Data",
          ),
        ),
      );
      return false;
    }
    return true;
  }
}