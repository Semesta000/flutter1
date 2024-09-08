import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          child: Icon(
                            Icons.download,
                            size: 36,
                            color: Colors.green,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8))),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "pemasukan",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14),
                          ),
                          Text("RP. 10.000.000",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 16))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          child: Icon(
                            Icons.upload,
                            size: 36,
                            color: Colors.red,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8))),
                      VerticalDivider(
                        color: Colors.red, // Warna garis
                        thickness: 20, // Ketebalan garis
                        width:
                            4, // Jarak total antara elemen di kiri dan kanan divider
                        indent: 10, // Jarak dari atas
                        endIndent: 10, // Jarak dari bawah
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "pengeluaran",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14),
                          ),
                          Text("RP. 1.000.000",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 16))
                        ],
                      )
                    ],
                  )
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blueGrey,
              ),
            ),
          ),
          Text("transaksi"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: Container(
                  child: Icon(
                    Icons.download,
                    color: Colors.green,
                  ),
                ),
                title: Text("RP. 20.0000.000"),
                subtitle: Text("Gaji Bulanan"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: Container(
                  child: Icon(
                    Icons.upload,
                    color: Colors.red,
                  ),
                ),
                title: Text("RP. 30.000"),
                subtitle: Text("Uang makan"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
