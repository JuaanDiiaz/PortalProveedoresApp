import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal de Proveedores'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: <Widget>[
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: _buildMenuItem(Icons.receipt, 'Facturas', Colors.orangeAccent, 
                onTap: () => Navigator.pushNamed(context, 'invoice')),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: _buildMenuItem(Icons.add_to_photos, 'Complementos', Colors.blueAccent, onTap: () {
                  Navigator.pushNamed(context, 'complement');
                }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: _buildMenuItem(Icons.people, 'Proveedores', Colors.greenAccent, onTap: () {
                  Navigator.pushNamed(context, 'supplier');
                }),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
Widget _buildMenuItem(IconData icon, String title, Color color, {required Function onTap}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [color.withOpacity(.7), color],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ()=> onTap(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}