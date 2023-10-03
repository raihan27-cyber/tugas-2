import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final nim = TextEditingController();
  final tahun = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aplikasi Flutter Pertama",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Aplikasi Flutter Perkenalan"),
            ),
            body: Form(
              key: _formKey,
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            labelText: "Nama Lengkap",
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          controller: nim,
                          decoration: InputDecoration(
                            hintText: "NIM",
                            labelText: "NIM",
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          controller: tahun,
                          decoration: InputDecoration(
                            hintText: "Tahun",
                            labelText: "Tahun Lahir",
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => TampilData(
                                            name: name.text,
                                            nim: nim.text,
                                            tahun: tahun.text)));
                              }
                            })
                      ])),
            )));
  }
}
