class Earthquake {
  final String tanggal;
  final String jam;
  final String dateTime;
  final String coordinates;
  final String lintang;
  final String bujur;
  final String magnitude;
  final String kedalaman;
  final String wilayah;
  final String potensi;
  final String dirasakan;

  Earthquake({
    required this.tanggal,
    required this.jam,
    required this.dateTime,
    required this.coordinates,
    required this.lintang,
    required this.bujur,
    required this.magnitude,
    required this.kedalaman,
    required this.wilayah,
    required this.potensi,
    required this.dirasakan,
  });

  factory Earthquake.fromJson(Map<String, dynamic> json) {
    return Earthquake(
      tanggal: json['Infogempa']['gempa']['Tanggal'],
      jam: json['Infogempa']['gempa']['Jam'],
      dateTime: json['Infogempa']['gempa']['DateTime'],
      coordinates: json['Infogempa']['gempa']['Coordinates'],
      lintang: json['Infogempa']['gempa']['Lintang'],
      bujur: json['Infogempa']['gempa']['Bujur'],
      magnitude: json['Infogempa']['gempa']['Magnitude'],
      kedalaman: json['Infogempa']['gempa']['Kedalaman'],
      wilayah: json['Infogempa']['gempa']['Wilayah'],
      potensi: json['Infogempa']['gempa']['Potensi'],
      dirasakan: json['Infogempa']['gempa']['Dirasakan'],
    );
  }
}
