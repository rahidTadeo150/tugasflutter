import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Center(
            child: Text(
              "Aplikasi Berita Online",
              style: TextStyle(color: const Color.fromARGB(160, 0, 0, 0)),
            ),
          ),
          actions: [
            IconButton( color: Color.fromARGB(255, 0, 0, 0),
                icon: const Icon(Icons.account_circle_rounded),
                onPressed: () {}),
              
          ],
          leading: IconButton(
            color: Color.fromARGB(255, 0, 0, 0),
            icon: const Icon(Icons.menu_outlined),
            onPressed: () {},
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(148, 137, 138, 234),
              ],
            ),
          ),
          child: ListView(
            children: <Widget>[
              ListAnggota(
                gambar:
                    "https://th.bing.com/th/id/OIP.Hdbuv6dLljrZmfqYhNwB_wHaE_?w=291&h=196&c=7&r=0&o=5&pid=1.7",
                nama: "Rahid Tadeo Anugrah",
                info: "TRPL 2E",
                backgroundColor: Color.fromARGB(88, 12, 100, 240),
              ),
              ListAnggota(
                gambar:
                    "https://th.bing.com/th/id/OIP.WPc65PGjkSkpQPY_uas4gwHaEK?w=239&h=180&c=7&r=0&o=5&pid=1.7",
                nama: "Teman Tadeo",
                info: "2E",
                backgroundColor: Color.fromARGB(137, 20, 255, 173),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListAnggota extends StatelessWidget {
  ListAnggota({this.gambar, this.nama, this.info, this.backgroundColor});
  final String? gambar;
  final String? nama;
  final String? info;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image(
              image: NetworkImage(
                gambar!,
              ),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama!,
                  style: TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(180, 0, 0, 0)),
                ),
                Text(
                  info!,
                  style: TextStyle(
                      fontSize: 13.0, color: Color.fromARGB(180, 0, 0, 0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
