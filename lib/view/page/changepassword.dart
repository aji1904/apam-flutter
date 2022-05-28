import 'package:app/view/page/profile.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/logors.png", width: 70.0),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                    ),
                    const Text(
                      "Silahkan ketikkan password Baru anda. nanti anda dapat menggunakan password baru.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                          top: 20.0,
                          bottom: 20.0,
                        ),
                        labelText: "Password Baru",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                          top: 20.0,
                          bottom: 20.0,
                        ),
                        labelText: "Ulangi Password Baru",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<StadiumBorder>(
                          const StadiumBorder(),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Ubah Password"),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                              ),
                              Icon(Icons.key_outlined),
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
      ),
    );
  }
}
