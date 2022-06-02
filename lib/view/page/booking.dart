import 'package:app/view/page/riwayat.dart';
import 'package:flutter/material.dart';

class BookingApp extends StatefulWidget {
  const BookingApp({Key? key}) : super(key: key);

  @override
  State<BookingApp> createState() => _BookingAppState();
}

class _BookingAppState extends State<BookingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 30.0),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent),
                  padding: const EdgeInsets.all(10.0),
                  child: const Center(
                    child: Text(
                      "Pendaftaran Online",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 25.0)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.greenAccent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.blue)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RiwayatPasien()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'POLIKLINIK ANAK',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'BPJS KESEHATAN',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3.0, left: 7.0, right: 7.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.lightBlueAccent),
                              child: const Text(
                                'dr. Andra Kurniato, Sp. A',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "2022-05-31",
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                "2022/05/31/000082",
                                style: TextStyle(color: Colors.black),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3.0,
                                    bottom: 3.0,
                                    left: 7.0,
                                    right: 7.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blueGrey),
                                child: const Text(
                                  'Belum',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.greenAccent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.blue)),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'POLIKLINIK ANAK',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'BPJS KESEHATAN',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3.0, left: 7.0, right: 7.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.lightBlueAccent),
                              child: const Text(
                                'dr. Andra Kurniato, Sp. A',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "2022-05-31",
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                "2022/05/31/000082",
                                style: TextStyle(color: Colors.black),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3.0,
                                    bottom: 3.0,
                                    left: 7.0,
                                    right: 7.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blue),
                                child: const Text(
                                  'Sudah',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
