import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  bool pengeluaran = true;
  final List<String> itemspengeluaran = ["jajan", "makan", "bayar"];
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    // Ambil tanggal sekarang
    DateTime currentDate = DateTime.now();

    // Tampilkan DatePicker
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null && selectedDate != currentDate) {
      // Format tanggal ke string
      String formattedDate =
          "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";

      // Perbarui controller dengan tanggal yang dipilih
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  String? itempilih;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Penambahakn transaksi"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Switch(
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
                  Text(
                    pengeluaran ? "Pengeluaran" : "Pemasukan",
                    style: GoogleFonts.roboto(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    labelText: "Jumlah",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 12,
              ),
              DropdownButton(
                isExpanded: true,
                hint: Text("pilih keterangan"),
                value: itempilih,
                onChanged: (String? newvalue) {
                  setState(() {
                    itempilih = newvalue;
                  });
                },
                items: itemspengeluaran
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: "silahkan pilih tangal",
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () => _selectDate(context)),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(onPressed: () {}, child: Text("simpan"))
            ],
          ),
        )),
      ),
    );
  }
}
