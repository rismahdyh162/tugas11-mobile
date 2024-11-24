import 'package:flutter/material.dart';

class GridData extends StatelessWidget {
  final List<String> data = [
    'Lip Tint',
    'Pixy cushion',
    'Maskara',
    'Blush On',
    'Sunscreen',
    'Paket Skincare',
    'Foundation',
    'Browcara',
  ];
  final List<String> imageUrls = [
    'https://lh6.googleusercontent.com/_8Y8e01NtJmSbZeyakdPlZBqkJHVMIgAEGCnMDzFzFeWOUHczu5wC3ijU-fVHDolauArvMnRD-cDBDPjE1vqk6YZ-Rx8D5URCoZ8X0u8uK_wL_BXkhdAcOFts8eql2HLPK4s9kiVn1xjfg6F3SAaQ7Y',
    'https://awsimages.detik.net.id/community/media/visual/2020/03/11/81c53a37-45c0-4d7d-bc2a-89818200b7df_43.jpeg?w=480',
    'https://awsimages.detik.net.id/community/media/visual/2022/09/06/maskara-brand-lokal-2_43.png?w=480',
    'https://akcdn.detik.net.id/community/media/visual/2021/12/28/blush-on-the-face-shop_43.jpeg?w=480',
    'https://akcdn.detik.net.id/community/media/visual/2023/10/17/facetology-triple-care-sunscreen.jpeg?w=816',
    'https://blog.atome.id/wp-content/uploads/2022/06/Review-lengkap-produk-skincare-Whitelab.jpg',
    'https://bqnisrwwqrvlgukctzln.supabase.co/storage/v1/object/public/products/wardah-lightening-liquid-foundation.jpg',
    'https://luxcrime.com/cdn/shop/products/b0087ac3f26df4dd4ef20b41435e245f_4b84d6e4-a438-44e2-a3a1-e474803a7c20_1080x.jpg?v=1639539503'
  ];
  final List<String> harga = [
    'Rp. 55.000',
    'Rp. 99.000',
    'Rp. 35.000',
    'Rp. 45.000',
    'Rp. 80.000',
    'Rp. 300.000',
    'Rp. 40.000',
    'Rp. 79.000',
  ];

  final List<String> diskripsi = [
    'Diskripsi Lip Tint: Memberikan warna natural pada bibir dengan tekstur ringan dan tahan lama.',
    'Diskripsi Pixy Cushion: Foundation praktis dengan formula ringan, memberikan hasil akhir matte dan glowing.',
    'Diskripsi Maskara: Memberikan efek bulu mata lebih panjang, tebal, dan lentik tanpa menggumpal.',
    'Diskripsi Blush On: Menyempurnakan penampilan dengan rona segar alami untuk pipi.',
    'Diskripsi Sunscreen: Perlindungan dari sinar UV dengan formula ringan yang mudah meresap.',
    'Diskripsi Paket Skincare: Kombinasi produk perawatan kulit untuk hasil wajah yang cerah dan sehat.',
    'Diskripsi Foundation: Foundation ringan dengan hasil akhir natural untuk menyamarkan noda wajah.',
    'Diskripsi Browcara: Memberikan warna alami dan menata alis agar lebih rapi sepanjang hari.',
  ];

  GridData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Data"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigasi ke halaman detail dengan membawa data yang diperlukan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                        title: data[index],
                        harga: harga[index],
                        imageUrl: imageUrls[index],
                        diskripsi: diskripsi[index]),
                  ),
                );
              },
              child: Card(
                //menambahkan bayangan
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                imageUrls[index],
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Column(
                          children: [
                            Text(data[index],
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            Text(harga[index])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String harga;
  final String imageUrl;
  final String diskripsi;

  const DetailPage(
      {required this.title,
      required this.harga,
      required this.imageUrl,
      required this.diskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                harga,
                style: const TextStyle(color: Colors.green, fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                diskripsi,
                style: const TextStyle(fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
