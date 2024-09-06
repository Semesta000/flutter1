import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool pengeluaran = true;
  void bukadialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  (pengeluaran == true)
                      ? Text("Pengeluaran",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, color: Colors.red))
                      : Text("Pemasukan",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, color: Colors.green)),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Isi nama...."),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("simpan"))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Switch(
                value: pengeluaran,
                onChanged: (bool value) {
                  setState(() {
                    pengeluaran = value;
                  });
                },
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.lightGreen,
                activeColor: Colors.red,
              ),
            ),
            IconButton(
                onPressed: () {
                  bukadialog();
                },
                icon: Icon(Icons.add))
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (pengeluaran == true)
                  ? Icon(
                      Icons.upload,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.download,
                      color: Colors.green,
                    ),
              title: Text("UANG MAKAN"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (pengeluaran == true)
                  ? Icon(
                      Icons.upload,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.download,
                      color: Colors.green,
                    ),
              title: Text("UANG MAKAN"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
