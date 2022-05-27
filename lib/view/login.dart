import 'package:app/view/forgot.dart';
import 'package:app/view/home.dart';
import 'package:app/view/main.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool viewPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Log in",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Mainpage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logors.png", width: 150.0),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  const Text(
                    "RS Bunda Medika Jakabaring",
                    style: TextStyle(fontSize: 25.0, color: Colors.green),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.account_circle,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Username",
                      contentPadding: const EdgeInsets.only(
                        left: 25.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  TextField(
                    obscureText: viewPass,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            viewPass = !viewPass;
                          });
                        },
                        icon: Icon(
                            viewPass ? Icons.visibility : Icons.visibility_off),
                        autofocus: false,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Password",
                      contentPadding: const EdgeInsets.only(
                        left: 25.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<StadiumBorder>(
                        const StadiumBorder(),
                      ),
                    ),
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    }),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Login"),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                            ),
                            Icon(Icons.login),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Forgotpassword(),
                        ),
                      );
                    },
                    child: const Text("Lupa Password ?"),
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
