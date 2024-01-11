import 'package:flutter/material.dart';
import 'package:binify/screens/model2.dart';
import 'package:binify/screens/repository2.dart';

class CustomLV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data from API'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: FutureBuilder<Earthquake>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else {
              // Tampilkan data yang diambil dari API sesuai kebutuhan
              Earthquake earthquake = snapshot.data!;
              return CustomListView(earthquake: earthquake);
            }
          },
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  final Earthquake earthquake;

  CustomListView({required this.earthquake});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildListItem("Tanggal", earthquake.tanggal),
        buildListItem("Jam", earthquake.jam),
        buildListItem("Datetime", earthquake.dateTime),
        buildListItem("Coordinates", earthquake.coordinates),
        buildListItem("Lintang", earthquake.lintang),
        buildListItem("Bujur", earthquake.bujur),
        buildListItem("Magnitude", earthquake.magnitude),
        buildListItem("Kedalaman", earthquake.kedalaman),
        buildListItem("Wilayah", earthquake.wilayah),
        buildListItem("Potensi", earthquake.potensi),
        buildListItem("Dirasakan", earthquake.dirasakan),
      ],
    );
  }

  Widget buildListItem(String title, String value) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
    );
  }
}
