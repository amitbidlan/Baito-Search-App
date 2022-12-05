import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Sign In",
              style: TextStyle(color: Colors.black),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/login_image.png")),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      label: Text("Email Address")),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      label: Text("Password")),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/homescreen");
                  },
                  child: Container(
                    height: 60,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFF653bbf),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                // This is to Type OR
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: Text("Don\'t have a account?"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: size.width / 3,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 236, 236, 236),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            children: [
                              const Padding(padding: EdgeInsets.all(20)),
                              Center(
                                  child:
                                      Image.asset("assets/images/google.png"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: size.width / 3,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 5, 64, 182),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(children: [
                            const Padding(padding: EdgeInsets.all(20)),
                            Center(
                                child:
                                    Image.asset("assets/images/facebook.png"))
                          ]),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
