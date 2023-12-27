Mata Kuliah  : Bimbingan Karir-TI-S1
Tugas        : Minggu Pertama
NIM          : A11.2020.13038
Nama         : Dinita Kusumasari


1. Hasil screenshoot database yang telah dibuat
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/356fe954-64f0-47aa-b23b-a9c1660e663f)
   Pada database **poli_bk** terdapat 8 table yaitu daftar_poli, detail_periksa, dokter, jadwal_periksa, obat, pasien, periksa, dan poli.
   **Daftar Hubungan Foreign Key :**
   1.	Tabel daftar_poli
      •	ID_jadwal (daftar_poli) ke ID (jadwal_periksa)
     	•	ID_pasien (daftar_poli) ke ID (pasien)
   2.	Tabel detail_periksa
      •	ID_obat (detail_periksa) ke ID (obat)
     	•	ID_periksa (detail_periksa) ke ID (periksa)
   3.	Tabel dokter
      •	ID_poli (dokter) ke ID (poli)
   4.	Tabel jadwal_periksa
      •	ID_dokter (jadwal_periksa) ke ID (dokter)
   5.	Tabel periksa
      •	ID_daftar_poli (periksa) ke ID (daftar_poli)

2. Template web yang dipakai
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/77c3d4c1-67fa-4ae1-b691-c0d69b5c63c2)
   Template web menggunakan AdminLTE (baik untuk admin, dokter, maupun pasien).

3. Login sebagai admin
   Untuk login sebagai admin:
   Username: admin
   Password: admin
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/f9b59644-aade-4aef-ad7c-af1771ce8b42)
   Setelah klik login maka akan muncul dashboard dengan role admin
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/61039ffe-06e0-438c-a7b9-8037ef7260d3)

4. Login sebagai dokter
   Untuk login sebagai dokter:
   Username: [nama dokter bisa dilihat di database]
   Password: [nama dokter bisa dilihat di database]
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/7d5a0734-9314-407b-b211-59ea34bc20e6)
   Setelah klik login maka akan muncul dashboard dengan role dokter
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/3531118a-8554-46d4-b7f1-dab8e43ec946)

5. Tampilan menu dashboard dapat menampilkan sesuai menu yang diklik
   • Menu dasboard admin
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/95435fae-e957-40de-8f9f-f94b58c3bb0b)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/6bdd75a2-f9e0-4e00-87a6-3edd50e4bb7c)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/aac24900-cbe7-49ac-9e7d-3f59654b111f)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/a87a4f28-4fe4-4319-b201-004e2f8357b9)
   
   • Menu dasboard dokter
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/778e2e4f-e30f-4528-9aaf-163785d78bd6)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/26eb6bf2-e12a-4a31-bf6f-ee831b3382d4)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/8a40364e-6dbd-48f2-adef-9b12df5c3201)
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/6ebab020-e065-410c-823f-1b217365f6c1)

6. Tampilan CRUD obat telah berhasil dibuat
   ![image](https://github.com/atDnK/Poliklinik/assets/89030992/26eb6bf2-e12a-4a31-bf6f-ee831b3382d4)
   • Tampilan tambah data obat
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/6381ce62-0454-4e5a-b846-ee9c23599500)
   • Tampilan edit data obat
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/05266886-729f-4329-9324-1ace5e0dc407)
   • Tampilan hapus data obat
     ![image](https://github.com/atDnK/Poliklinik/assets/89030992/23b0d1f3-1ccf-457e-a3a8-bb6626f61682)

   
    




   
   



   
  
