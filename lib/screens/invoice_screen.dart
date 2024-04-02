import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facturas'),
      ),
      body: Column(
        children: <Widget>[
          const Text('Facturas'),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Factura $index'),
                subtitle: const Text('Subtitulo'),
                leading: const Icon(Icons.attach_file),
              );
            },
          )
        ],
      ),
    );
  }
}