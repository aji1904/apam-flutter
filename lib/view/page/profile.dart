import 'package:app/view/page/changepassword.dart';
import 'package:app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfileApp extends StatefulWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topCenter,
                    colors: [Colors.lightGreenAccent, Colors.greenAccent],
                  ),
                ),
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              right: 10.0,
                              bottom: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Aji Prasetyo",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                ),
                                Text(
                                  "123111123111123 (BPJS)",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 3.0)),
                                Text(
                                  "001388 (Rekam Medis)",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              Image.asset("assets/L.png", height: 80.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
                      child: Card(
                        elevation: 4,
                        child: QrImage(
                          data: "001388",
                          errorCorrectionLevel: QrErrorCorrectLevel.M,
                          version: QrVersions.auto,
                          size: 180.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      width: 95.0,
                      child: ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Text("Ubah"),
                              Padding(padding: EdgeInsets.only(left: 3.0)),
                              Icon(Icons.edit_outlined, size: 17),
                            ],
                          )),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.blue)),
                  elevation: 4,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Tempat dan Tanggal Lahir",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 8.0)),
                            Text(
                              "Palembang, 19 April 1998",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 15.0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Jenis Kelamin",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 8.0)),
                            Text(
                              "Laki-Laki",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 15.0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Alamat",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 8.0)),
                            Text(
                              "Jln Sukarela Lrg Swadaya 2 Rt 43 Rw 07, Sukarami, Sukarami, Palembang",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 15.0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Kartu Identitas",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 8.0)),
                            Text(
                              "1671071904980004",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Panduan Aplikasi",
                            style: TextStyle(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Icon(Icons.article_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePassword()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Ubah Password",
                            style: TextStyle(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Icon(Icons.key_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "About App",
                            style: TextStyle(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Icon(Icons.info),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // logout
              Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Logout"),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Icon(Icons.exit_to_app_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 15.0)),
            ],
          ),
        ),
      ),
    );
  }
}
