import 'package:flutter/material.dart';
import 'package:flutter_ppb/model/user.dart';

class LoginEvent extends StatelessWidget {
  const LoginEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginForm();
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool visble = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dataUser = ModalRoute.of(context)!.settings.arguments as User?;
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 18),
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: TextField(
                          controller: passwordController,
                          obscureText: visble,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visble = !visble;
                                      });
                                    },
                                    icon: const Icon(
                                        Icons.remove_red_eye_rounded)),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              enabled: true,
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              focusedBorder: const OutlineInputBorder(
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
                            onPressed: () {
                              if (emailController.text == dataUser!.email &&
                                  passwordController.text ==
                                      dataUser.password) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Center(
                                      child: Text(
                                    'Login Berhasil',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )),
                                ));
                                Navigator.pushNamed(context, '/dashboard_event',
                                    arguments: dataUser);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Center(
                                      child: Text(
                                    'Login Gagal',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )),
                                ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: const EdgeInsets.only(
                                    top: 18, bottom: 18, left: 134, right: 134),
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
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
