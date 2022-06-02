import 'package:app/view/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool viewPass = true;
  bool viewPass2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register", style: TextStyle(color: Colors.blue)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.blue,
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logors.png", width: 120.0),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  const Text(
                    "RS Bunda Medika Jakabaring",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0, color: Colors.green),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.alternate_email,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Email",
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
                  TextField(
                    obscureText: viewPass2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            viewPass2 = !viewPass2;
                          });
                        },
                        icon: Icon(viewPass2
                            ? Icons.visibility
                            : Icons.visibility_off),
                        autofocus: false,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Ulangi Password",
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
                          builder: (context) => const Login(),
                        ),
                      );
                    }),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Daftar"),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                            ),
                            Icon(Icons.login),
                          ],
                        ),
                      ),
                    ),
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
