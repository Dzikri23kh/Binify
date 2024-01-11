import 'package:dio/dio.dart';
import 'package:binify/screens/model2.dart';

Future<Earthquake> fetchData() async {
  try {
    // URL API
    String url = "https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json";

    // Buat objek Dio
    Dio dio = Dio();

    // Lakukan request GET
    Response response = await dio.get(url);

    // Cek apakah request berhasil (kode status 200)
    if (response.statusCode == 200) {
      // Parse data JSON
      Map<String, dynamic> data = response.data;
      return Earthquake.fromJson(data);
    } else {
      throw Exception("Gagal mendapatkan data");
    }
  } catch (e) {
    throw Exception("Terjadi kesalahan: $e");
  }
}


