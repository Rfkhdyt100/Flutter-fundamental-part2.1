// import 'package:flutter/material.dart';

// class Item {
//   final String nama;
//   final String imageUrl;
//   final double harga;
//   final int stock;
//   final double rating;

//   Item({
//     required this.nama,
//     required this.imageUrl,
//     required this.harga,
//     required this.stock,
//     required this.rating,
//   });
// }

// class HomePage extends StatelessWidget {
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
//         title: const Text('Shopping List'),
//         backgroundColor: Colors.blue,
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return InkWell(
//             onTap: () {
//               Navigator.pushNamed(context, '/item', arguments: items[index]);
//             },
//             child: Card(
//               child: Container(
//                 margin: const EdgeInsets.all(8),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       items[index].imageUrl,
//                       width: 80,
//                       height: 80,
//                       fit: BoxFit.cover,
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             items[index].nama,
//                             style: const TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             'Rp ${items[index].harga.toStringAsFixed(0)}',
//                             style: const TextStyle(fontSize: 16),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// ---------------------------------------------------------------------------

import 'package:flutter/material.dart';

class Item {
  final String nama;
  final String imageUrl;
  final double harga;
  final int stock;
  final double rating;

  Item({
    required this.nama,
    required this.imageUrl,
    required this.harga,
    required this.stock,
    required this.rating,
  });
}

class HomePage extends StatelessWidget {
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
        title: const Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            // Widget Expanded pada ListView.builder
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item',
                        arguments: items[index]);
                  },
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Image.network(
                            items[index].imageUrl,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.error, size: 80);
                            },
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].nama,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Rp ${items[index].harga.toStringAsFixed(0)}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Footer(), // Footer di luar Expanded
        ],
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
            'Nama: Rifki Hidayat',
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
