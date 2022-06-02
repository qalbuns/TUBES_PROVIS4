import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fakultas = <Map<String, String>>[
      {
        'label': 'Fakultas Ilmu Pendidikan (FIP)',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Ilmu-Pendidikan-F-I-P-300x300.png.webp',
      },
      {
        'label': 'Fakultas Pendidikan Ilmu Pengetahuan Sosial (FPIPS)',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Ilmu-Pengetahuan-Sosial-F-P-I-P-S-300x300.png.webp',
      },
      {
        'label': 'Fakultas Pendidikan Bahasa Dan Sastra (FPBS)',
        'nama': '',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Bahasa-Dan-Sastra-F-P-B-S-300x300.png.webp',
      },
      {
        'label':
            'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA)',
        'nama': '',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Matematika-Dan-Ilmu-Pengetahuan-Alam-F-P-M-I-P-A-300x300.png.webp',
      },
      {
        'label': 'Fakultas Pendidikan Teknologi Dan Kejuruan (FPTK)',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Teknologi-Dan-Kejuruan-F-P-T-K-300x300.png.webp',
      },
      {
        'label': 'Fakultas Pendidikan Ekonomi dan Bisnis (FPEB)',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Ekonomi-Dan-Bisnis-F-P-E-B-300x300.png.webp',
      },
      {
        'label': 'Fakultas Pendidikan Seni dan Desain (FPSD)',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Fakultas-Pendidikan-Seni-dan-Desain-F-P-S-D-300x300.png.webp',
      },
      {
        'label': 'Sekolah PascaSarjana',
        'nama': ' ',
        'gambar':
            'https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPI-Universitas-Pendidikan-Indonesia-Sekolah-Pascasarjana-300x300.png.webp',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in fakultas)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianFakultas(detailFakultas: fk)));
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
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                fk['nama'] ?? 'null',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          fk['gambar'] ?? 'null',
                          width: 120,
                          height: 120,
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
