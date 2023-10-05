import 'package:flutter/material.dart';

class LoginEvent extends StatelessWidget {
  const LoginEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 100, left: 32, right: 33),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Back 👋',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 64,
                      ),
                      const Text(
                        "E-mail",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 18),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: "Enter your e-mail address"),
                        ),
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Icon(Icons.remove_red_eye),
                              ),
                              prefixIcon: Icon(Icons.lock),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: "Enter You Password "),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: const EdgeInsets.only(
                                    top: 18, bottom: 18, left: 144, right: 144),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 214,
                      ),
                      const Text("Haven’t an account ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register_event');
                          },
                          child: const Text("Register"))
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
