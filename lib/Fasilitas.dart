import 'package:flutter/material.dart';
import 'RincianFasilitas.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final fasilitas = <Map<String, String>>[
      {
        'label': 'Ruang Kuliah',
        'contoh': ' ',
        'gambar': 'https://www.upi.edu/images/upload/smart-classroom-fpeb.jpg',
      },
      {
        'label': 'Perpustakaan',
        'contoh': ' ',
        'gambar':
            'http://isolapos.com/wp-content/uploads/2015/09/F_IPO-110915_Berita_Perpustakaan.jpg',
      },
      {
        'label': 'Balai Bahasa',
        'contoh': ' ',
        'gambar': 'https://bipa.kemdikbud.go.id/filejaga/65-upi.jpg',
      },
      {
        'label': 'Dormitory',
        'contoh': ' ',
        'gambar': 'https://www.upi.edu/images/upload/dormitori.jpg',
      },
      {
        'label': 'Masjid Al Furqan',
        'contoh': ' ',
        'gambar':
            'https://upload.wikimedia.org/wikipedia/id/1/19/Masjid_al-furqon_upi.jpg',
      },
      {
        'label': 'Isola Resort',
        'contoh': ' ',
        'gambar':
            'https://pix10.agoda.net/hotelImages/267162/-1/77b66ea0f96f0bb12d958182a1b69600.jpg?ca=9&ce=1&s=1024x768',
      },
      {
        'label': 'Balai Pertemuan',
        'contoh': ' ',
        'gambar': 'https://pbs.twimg.com/media/CBt8kKuVEAALc2_.jpg',
      },
      {
        'label': 'Stadion',
        'contoh': ' ',
        'gambar':
            'https://d3hzxw6fwm263k.cloudfront.net/uploads/events/photos/1474539030-5wLCiN7TCqLbLB3vl1dlTdsxTnYBzNJm.jpg?width=1200&quality=78',
      },
      {
        'label': 'Kolam Renang',
        'contoh': ' ',
        'gambar': 'https://www.upi.edu/images/upload/kolam-renang-UPI.jpg',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in fasilitas)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianFasilitas(detailFasilitas: fk)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                fk['label'] ?? 'null',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                fk['contoh'] ?? 'null',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          fk['gambar'] ?? 'null',
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ]),
    );
  }
}
