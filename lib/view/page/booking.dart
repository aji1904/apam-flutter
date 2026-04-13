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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // ignore: non_constant_identifier_names
    double WidthScreen = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final double FontSizeText = (WidthScreen <= 320) ? 11 : 15;

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
                      color: colorScheme.primaryContainer),
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Pendaftaran Online",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 25.0)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      colorScheme.primaryContainer,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: colorScheme.outlineVariant)),
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
                            Text(
                              'POLIKLINIK ANAK',
                              style: TextStyle(
                                fontSize: FontSizeText,
                                color: colorScheme.onPrimaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'BPJS KESEHATAN',
                              style: TextStyle(
                                  fontSize: FontSizeText,
                                  color: colorScheme.onPrimaryContainer),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3.0, left: 7.0, right: 7.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: colorScheme.secondaryContainer),
                              child: Text(
                                'dr. Andra Kurniato, Sp. A',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: FontSizeText,
                                  color: colorScheme.onSecondaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "2022-05-31",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: FontSizeText,
                                ),
                              ),
                              Text(
                                "2022/05/31/000082",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: FontSizeText,
                                ),
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
                                    color: colorScheme.tertiaryContainer),
                                child: Text(
                                  'Belum',
                                  style: TextStyle(
                                    fontSize: FontSizeText,
                                    color: colorScheme.onTertiaryContainer,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
