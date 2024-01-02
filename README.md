Mata Kuliah  : Bimbingan Karir-TI-S1 <br />
Tugas        : Minggu Pertama <br />
NIM          : A11.2020.13038 <br />
Nama         : Dinita Kusumasari <br />


1. Hasil screenshoot database yang telah dibuat <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/356fe954-64f0-47aa-b23b-a9c1660e663f) <br />
   Pada database **poli_bk** terdapat 8 table yaitu daftar_poli, detail_periksa, dokter, jadwal_periksa, obat, pasien, periksa, dan poli. <br />
   **Daftar Hubungan Foreign Key :** <br />
   1.	Tabel daftar_poli <br />
      •	ID_jadwal (daftar_poli) ke ID (jadwal_periksa) <br />
     	•	ID_pasien (daftar_poli) ke ID (pasien) <br />
   2.	Tabel detail_periksa <br />
      •	ID_obat (detail_periksa) ke ID (obat) <br />
     	•	ID_periksa (detail_periksa) ke ID (periksa) <br />
   3.	Tabel dokter <br />
      •	ID_poli (dokter) ke ID (poli) <br />
   4.	Tabel jadwal_periksa <br />
      •	ID_dokter (jadwal_periksa) ke ID (dokter) <br />
   5.	Tabel periksa <br />
      •	ID_daftar_poli (periksa) ke ID (daftar_poli) <br />

2. Template web yang dipakai <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/77c3d4c1-67fa-4ae1-b691-c0d69b5c63c2) <br />
   Template web menggunakan AdminLTE (baik untuk admin, dokter, maupun pasien). <br />

3. Login sebagai admin <br />
   Untuk login sebagai admin: <br />
   Username: admin <br />
   Password: admin <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/f9b59644-aade-4aef-ad7c-af1771ce8b42) <br />
   Setelah klik login maka akan muncul dashboard dengan role admin <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/61039ffe-06e0-438c-a7b9-8037ef7260d3) <br />

4. Login sebagai dokter <br />
   Untuk login sebagai dokter: <br />
   Username: [nama dokter bisa dilihat di database] <br />
   Password: [nama dokter bisa dilihat di database] <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/7d5a0734-9314-407b-b211-59ea34bc20e6) <br />
   Setelah klik login maka akan muncul dashboard dengan role dokter <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/3531118a-8554-46d4-b7f1-dab8e43ec946) <br />

5. Tampilan menu dashboard dapat menampilkan sesuai menu yang diklik <br />
   • Menu dasboard admin <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/b0bf8b40-96c3-4c5c-b1c3-7a9477238b00) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/e0825101-4383-47a2-a813-dd183a052bbb) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/0b52f106-c7a2-4daa-ac8c-ee6fd1c2290f) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/102a0476-2ad2-4625-8d03-345587e966c6) <br />
   
   • Menu dasboard dokter <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/48ad1c60-d488-4979-95ea-ef57472df61b) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/766de1b6-3fe8-4da5-a438-87c96c32f727) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/afec24f6-1074-427c-98b6-de771d0eb47c) <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/d580fa11-df93-4c31-b489-e4b94732d48c) <br />

6. Tampilan CRUD obat telah berhasil dibuat <br />
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/41a31d88-e558-4168-b251-67171a7e95f4) <br />
   • Tampilan tambah data obat <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/b03148e5-c18f-4632-bf35-7f00ba887551) <br />
   • Tampilan edit data obat <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/b926bd02-0034-4cf1-9fe6-73a50087e9be) <br />
   • Tampilan hapus data obat <br />
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/bbcba441-3e98-4c4a-a2b1-2ec5a3a353ff) <br />

   
    




   
   



   
  
