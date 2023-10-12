import 'package:flutter/material.dart';

class RegisterSponsor extends StatelessWidget {
  const RegisterSponsor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 80, left: 32, right: 33),
          child: Column(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Company Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_balance),
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
                            hintText: "Company Name"),
                      ),
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "E-mail",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
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
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
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
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
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
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 70),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.only(
                              top: 18, bottom: 18, left: 134, right: 134),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      child: const Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Have an account ?"),
            TextButton(onPressed: () {}, child: const Text("Login",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),)
          ],
        ),
      ],
    );
  }
}
