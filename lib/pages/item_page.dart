import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.nama),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.nama,
              child: Image.network(item.imageUrl),
            ),
            const SizedBox(height: 16),
            Text('${item.nama} with ${item.harga}'),
            const SizedBox(height: 8),
            Text('Stock: ${item.stock}'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text('${item.rating}'),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Bagian kode untuk menambahkan item ke keranjang belanja
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item.nama} added to cart')),
                );
              },
              child: const Text('Add to Cart'),
            ),
            const SizedBox(height: 16),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
