import 'package:assaignment_for_jobs/widgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsText = true;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Text("Create your Account",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'urbanist',
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 110, 107, 107),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.black26),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black26,
                        )),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 110, 107, 107),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    obscureText: obsText,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black26,
                      ),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
                      suffixIcon: obsText == true
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  obsText = false;
                                });
                              },
                              icon: Icon(Icons.visibility_off,
                                  color: Colors.black26))
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  obsText = true;
                                });
                              },
                              icon: Icon(Icons.visibility,
                                  color: Colors.black26)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      }),
                  Text(
                    "Remember me",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  color: Color.fromARGB(255, 123, 62, 215),
                  borderRadius: BorderRadius.circular(30),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Get.to(BootomVanBar());
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("or continue with"),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 70,
                      
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black12),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                              image:
                                  AssetImage("assets/vector/google_logo.png"))),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed: () {}, child: Text("Sign In"))
                ],
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ));
  }
}
