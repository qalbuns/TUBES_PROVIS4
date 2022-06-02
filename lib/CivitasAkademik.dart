import 'package:flutter/material.dart';
import 'RincianCivitasAkademik.dart';

class CivitasAkademik extends StatelessWidget {
  const CivitasAkademik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CivitasAkademik = <Map<String, String>>[
      {
        'label': 'Rektor',
        'contoh': ' ',
        'gambar': 'https://ppid.upi.edu/wp-content/uploads/2021/04/Rektor.jpg',
      },
      {
        'label': 'Wakil Rektor Bidang Pendidikan dan Kemahasiswaan',
        'contoh': '',
        'gambar': 'https://ppid.upi.edu/wp-content/uploads/2021/04/WR1.jpg',
      },
      {
        'label': 'Wakil Rektor Bidang Sumber Daya dan Keuangan',
        'contoh': '',
        'gambar': 'https://ppid.upi.edu/wp-content/uploads/2021/04/WR2.jpg',
      },
      {
        'label':
            'Wakil Rektor Bidang Perencanaan, Organisasi, Dan Sistem Informasi',
        'contoh': '',
        'gambar': 'https://ppid.upi.edu/wp-content/uploads/2021/04/WR3.jpg',
      },
      {
        'label':
            'Wakil Rektor Bidang Riset Internasional, Kerja Sama, dan Usaha',
        'contoh': '',
        'gambar': 'https://ppid.upi.edu/wp-content/uploads/2021/04/WR4.jpg',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in CivitasAkademik)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RincianCivitasAkademik(
                                detailCivitasAkademik: fk)));
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
                                  fontSize: 28,
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
                          width: 240,
                          height: 240,
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
