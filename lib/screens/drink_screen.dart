import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Minuman'),
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
                Image.network('https://s3-publishing-cmn-svc-prd.s3.ap-southeast-1.amazonaws.com/article/dX5CqkEEpcJR8FTJFp6xL/original/068756000_1603085635-Kenali-Mitos-dan-Fakta-Seputar-Minuman-Bersoda-shutterstock_361921463.jpg'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Minuman $index'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
