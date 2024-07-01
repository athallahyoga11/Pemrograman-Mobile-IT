import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muslim Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Menetapkan font untuk tema secara global
        fontFamily: 'IslamicFont',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muslim Lite'),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/masjid.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                  title: 'Pahala',
                  subtitle: 'Mau nambah pahala ga nih?',
                  backgroundColor: Color(0xFF66BB6A), // Warna hijau islami
                ),
                SizedBox(height: 20),
                CustomCard(
                  title: 'Dosa',
                  subtitle: 'Ya Allah mas, tobat yo mas!',
                  backgroundColor: Color.fromARGB(255, 180, 0, 0), // Warna oranye islami
                ),
                SizedBox(height: 20),
                CustomCard(
                  title: 'Gabut',
                  subtitle: 'Pencet aja kalo kamu gabut',
                  backgroundColor: Color.fromARGB(255, 0, 100, 120), // Warna ungu islami
                ),
                SizedBox(height: 20),
                Image.network(
                  'https://cdn.discordapp.com/attachments/1067327620938747946/1225058184276742194/putut-removebg-preview.png?ex=661fbf57&is=660d4a57&hm=b9288fe6659822847f6d501d4640591622ea8819aec272716d8c76f2e54b48bc&',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Learn More'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Mengubah warna primer tombol menjadi biru
                    foregroundColor: Colors.white, // Mengubah warna teks tombol menjadi putih
                  ),
                ),
                // SizedBox(height: 20),
                // StatefulWidgetExample(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int _clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: widget.backgroundColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _clickCount++;
              });
            },
            child: Text('Tambah($_clickCount)'),
          ),
        ],
      ),
    );
  }
}
