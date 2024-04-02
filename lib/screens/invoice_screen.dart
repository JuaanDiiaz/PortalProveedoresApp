import 'dart:ffi';

import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facturas'),
      ),
      body: SingleChildScrollView(      
        child: Column(
          children: <Widget>[
            Container(
              width:  size.width,
              height: size.height * 0.8,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Factura $index'),
                    subtitle: const Text('Subtitulo'),
                    leading: const Icon(Icons.attach_file),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}