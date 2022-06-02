import 'package:flutter/material.dart';

class RincianBerita extends StatelessWidget {
  final Map<String, String> detailBerita;

  const RincianBerita({Key? key, required this.detailBerita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Berita = {
      'Berita Ilmu Pendidikan (FIP)': {
        'Dekan': 'Dr. Rudi Susilana, M.Si.',
        'Prodi': [
          'Administrasi Pendidikan',
          'Teknologi Pendidikan',
          'Perpustakaan dan Sains Informasi',
          'Pedagogik',
          'Pendidikan Masyarakat',
          'Pendidikan Khusus',
          'Bimbingan & Konseling',
          'Psikologi',
          'Pendidikan Guru Sekolah Dasar',
          'Pendidikan Guru Pendidikan Anak Usia Dini'
        ],
        'Tentang':
            'Kelahiran Berita Ilmu Pendidikan (FIP) tidak bisa dipisahkan dari perjalanan sejarah Universitas Pendidikan Indonesia (UPI) secara keseluruhan. Universitas Pendidikan Indonesia didirikan pada tanggal 20 Oktober 1954 di Bandung, diresmikan oleh Menteri Pendidikan Pengajaran Mr. Muhammad Yamin. Semula bernama Perguruan Tinggi Pendidikan Guru (PTPG). Seiring dengan berdirinya Universitas Padjadjaran (UNPAD), pada tanggal 25 November 1958 PTPG diintegrasikan menjadi Berita utama Universitas Padjadjaran dengan nama Berita Keguruan dan Ilmu Pendidikan (FKIP). Pada tanggal 1 Mei 1963 dikeluarkan Keputusan Presiden Nomor 1 tahun 1963, yang melebur FKIP dan IPG menjadi Institut Keguruan dan Ilmu Pendidikan (IKIP) sebagai satu satunya lembaga pendidikan guru tingkat universitas.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      }
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Berita'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailBerita['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Nama'),
              subtitle: Text(detailBerita['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Dekan'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]?['Dekan']
                  as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Prodi'),
              subtitle: Text(
                  (Berita[(detailBerita['label'] as String)]?['Prodi'] as List)
                      .join(', ')),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Tentang'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]
                  ?['Tentang'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Jumlah Dosen dan Staff'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]
                  ?['Jumlah Dosen dan Staff'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Jumlah Mahasiswa'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]
                  ?['Jumlah Mahasiswa'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
