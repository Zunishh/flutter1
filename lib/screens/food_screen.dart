import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Makanan'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: 4, // Sesuaikan jumlah produk
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network('https://akcdn.detik.net.id/visual/2024/05/20/soto-ayam_43.jpeg?w=720&q=90'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Makanan $index'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
