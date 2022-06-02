import 'package:flutter/material.dart';

class RincianCivitasAkademik extends StatelessWidget {
  final Map<String, String> detailCivitasAkademik;

  const RincianCivitasAkademik({Key? key, required this.detailCivitasAkademik})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CivitasAkademik = {
      'Rektor': {
        'Nama': 'Prof. Dr. M. Solehuddin, M.Pd., M.A.',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pendidikan':
            'Psikologi Pendidikan dan Bimbingan (PPB), IKIP Bandung. (S1) Bimbingan Konseling (BK), IKIP Bandung. (S2) Master of Arts in Early Childhood Education, Ohio State University, Ohio, Amerika Serikat. (S2) Bimbingan Konseling, Universitas Pendidikan Indonesia. (S3)',
      },
      'Wakil Rektor Bidang Pendidikan dan Kemahasiswaan': {
        'Nama': 'Prof. Dr. Didi Sukyadi, M.A​',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pendidikan':
            'IKIP Bandung Jurusan Pendidikan Bahasa Inggris, (S1) University of London jurusan Primary Education, (S2) UI Jakarta jurusan Ilmu Linguistik. (S3)',
      },
      'Wakil Rektor Bidang Sumber Daya dan Keuangan': {
        'Nama': 'Prof. Dr. H. Agus Rahayu, M.P​',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pendidikan':
            'Pendidikan Ekonomi Perusahaan, IKIP Bandung,1986. (S1) Ekonomi Perusahaan Pertanian, UNPAD, 1995. (S2) Ekonomi – Manajemen, UNPAD, 2004. (S3)',
      },
      'Wakil Rektor Bidang Perencanaan, Organisasi, Dan Sistem Informasi': {
        'Nama': 'Prof. Dr. Bunyamin Maftuh, M.Pd., M.A',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pendidikan':
            'IKIP Bandung Jurusan Pendidikan Moral Pancasila dan Kewarganegaraan (PMPKN). (S1)IKIP Bandung Jurusan Pendidikan Umum. (S2) The Ohio State University Columbus, Ohio, USA Jurusan Early & Middle Childhood Education (in Social Studies). (S2) UPI Jurusan Pendidikan IPS. (S3)',
      },
      'Wakil Rektor Bidang Riset Internasional, Kerja Sama, dan Usaha': {
        'Nama': 'Prof. Dr. H. Adang Suherman, M.A',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pendidikan':
            'Pend. Olahraga Kesehatan & Rekreasi, IKIP Bandung, 1987. (S1) Master of Arts in Healthphysical Education & Recreation Ohio State University (OSU), USA, 1995. (S2) Pengembangan Kurikulum, UPI, 2007. (S3)',
      },
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian CivitasAkademik'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailCivitasAkademik['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Jabatan'),
              subtitle: Text(detailCivitasAkademik['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Nama'),
              subtitle: Text(
                  CivitasAkademik[(detailCivitasAkademik['label'] as String)]
                      ?['Nama'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Pendidikan Terakhir'),
              subtitle: Text(
                  (CivitasAkademik[(detailCivitasAkademik['label'] as String)]
                          ?['Pendidikan Terakhir'] as List)
                      .join(', ')),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Riwayat Pendidikan'),
              subtitle: Text(
                  CivitasAkademik[(detailCivitasAkademik['label'] as String)]
                      ?['Riwayat Pendidikan'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
