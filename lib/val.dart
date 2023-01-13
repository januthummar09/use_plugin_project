import 'package:flutter/material.dart';

class Val extends StatefulWidget {
  const Val({Key? key}) : super(key: key);

  @override
  State<Val> createState() => _ValState();
}

class _ValState extends State<Val> {
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isIcon = true;
    dynamic obscureText = true;
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double widget = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Text("User Name"),
              SizedBox(
                height: heigth / 60,
              ),
              TextFormField(
                controller: userNameController,
                // onChanged: (value) {
                //   debugPrint("value----->>>>$value");
                // },

                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Enter user name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // debugPrint("aa------>.   $value");
                    return 'Please enter some text';
                  } else if (value.length != 4) {
                    return "please enter mininum 4 character";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: heigth / 30,
              ),
              const Text("password"),
              SizedBox(
                height: heigth / 80,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: () {
                      obscureText != obscureText;
                      setState(() {});
                    },
                    child: const Icon(Icons.remove_red_eye),
                  ),
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: heigth / 30,
              ),

              //self

              // ElevatedButton(
              //   onPressed: () {
              //     if (formKey.currentState!.validate()) {
              //       debugPrint("validated");
              //       debugPrint(userNameController.text);
              //     } else {
              //       debugPrint("not validated");
              //     }
              //   },
              //   child: const Text("Submit"),
              // ),
              ElevatedButton(
                onPressed: () {
                  if (validter()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validter() {
    if (userNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' Data'),
        ),
      );
      return false;
      // debugPrint("false");
    }

    return true;
    // debugPrint("false");
  }
}
