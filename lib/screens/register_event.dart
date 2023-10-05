import 'package:flutter/material.dart';

class RegisterEvent extends StatelessWidget {
  const RegisterEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 60, left: 32, right: 33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Let’s Join ',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'With Us 👍',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 62,
                ),
                const Row(
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "First Name",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_box_sharp),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: "First Name"),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Last Name",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8, right: 10, left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: "Last Name"),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "E-mail",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "E-mail"),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, right: 10),
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
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Password"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, right: 10),
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
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Confirm Password"),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    top: 18, bottom: 18, right: 132, left: 132),
                                backgroundColor: Colors.black,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {},
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Have an account ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Login"),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
