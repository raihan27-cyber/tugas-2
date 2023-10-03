import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String name;
  final String nim;
  final String tahun; //contoh data yang di-passing

  const TampilData(
      {Key? key, required this.name, required this.nim, required this.tahun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perkenalan"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(name), Text(nim), Text(tahun)],
        )));
  }
}
