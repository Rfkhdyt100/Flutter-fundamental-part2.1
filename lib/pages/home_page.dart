// import 'package:flutter/material.dart';
// import '../models/item.dart';

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);

//   final List<Item> items = [
//     Item(
//       nama: 'JETEX MSX3 Mouse Gaming',
//       imageUrl:
//           'https://th.bing.com/th/id/OIP.J6Ke30Sk2QcsOlIzC9JvkgHaHa?w=126&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
//       harga: 250000,
//       stock: 9,
//       rating: 4.5,
//     ),
//     Item(
//       nama: 'G700 Mechanical GAMING KEYBOARD',
//       imageUrl:
//           'https://th.bing.com/th/id/OIP.ECN6uaFuAaXmmmWsOohxGAHaHZ?w=161&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
//       harga: 425000,
//       stock: 5,
//       rating: 4.8,
//     ),
//     Item(
//       nama: 'Rexus Vonix F30 RGB Headset Gaming',
//       imageUrl: 'https://cf.shopee.co.id/file/07fbf820e48df4a99d55da43e8e7ace3',
//       harga: 355000,
//       stock: 3,
//       rating: 4.2,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Daftar Item'),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           double screenWidth = constraints.maxWidth;
//           int crossAxisCount = screenWidth < 600 ? 1 : 2;

//           return Padding(
//             padding: screenWidth < 600
//                 ? const EdgeInsets.all(16)
//                 : const EdgeInsets.all(32),
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: crossAxisCount,
//                 childAspectRatio: 1.2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/item',
//                         arguments: items[index]);
//                   },
//                   child: Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(16),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.network(
//                               items[index].imageUrl,
//                               fit: BoxFit.cover,
//                               errorBuilder: (context, error, stackTrace) {
//                                 return const Center(
//                                   child: Icon(Icons.error, size: 50),
//                                 );
//                                  const Footer()
//                               },
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             items[index].nama,
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             'Rp ${items[index].harga.toString()}',
//                             style: const TextStyle(fontSize: 14),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             'Stock: ${items[index].stock}',
//                             style: const TextStyle(fontSize: 14),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             'Rating: ${items[index].rating}',
//                             style: const TextStyle(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class ItemWidget extends StatelessWidget {
//   final Item item;

//   const ItemWidget({Key? key, required this.item}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, '/item', arguments: item);
//       },
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Text(
//                   item.nama,
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Text(
//                   'Rp ${item.harga.toStringAsFixed(2)}',
//                   style: const TextStyle(fontSize: 18),
//                   textAlign: TextAlign.end,
//                ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      nama: 'JETEX MSX3 Mouse Gaming',
      imageUrl:
          'https://th.bing.com/th/id/OIP.J6Ke30Sk2QcsOlIzC9JvkgHaHa?w=126&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
      harga: 250000,
      stock: 9,
      rating: 4.5,
    ),
    Item(
      nama: 'G700 Mechanical GAMING KEYBOARD',
      imageUrl:
          'https://th.bing.com/th/id/OIP.ECN6uaFuAaXmmmWsOohxGAHaHZ?w=161&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
      harga: 425000,
      stock: 5,
      rating: 4.8,
    ),
    Item(
      nama: 'Rexus Vonix F30 RGB Headset Gaming',
      imageUrl: 'https://cf.shopee.co.id/file/07fbf820e48df4a99d55da43e8e7ace3',
      harga: 355000,
      stock: 3,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Item'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          int crossAxisCount = screenWidth < 600 ? 1 : 2;

          return Padding(
            padding: screenWidth < 600
                ? const EdgeInsets.all(16)
                : const EdgeInsets.all(32),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ItemCard(item: items[index]);
                    },
                  ),
                ),
                const Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        elevation: 4,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.error, size: 50),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.nama,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Rp ${item.harga.toString()}',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                'Stock: ${item.stock}',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                'Rating: ${item.rating}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey[100],
      child: Column(
        children: const [
          Text(
            'Nama: Rifki hidayat',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'NIM: 362358302097',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
