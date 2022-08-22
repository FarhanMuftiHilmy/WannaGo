import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Staatliches');

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/images/pexels-caleb-oquendo-3031100.jpg'),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Taman Sidratul Muntaha',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Icon(Icons.calendar_today),
                    const SizedBox(height: 8.0),
                    Text('Open Everyday', style: informationTextStyle,),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.access_time),
                    const SizedBox(height: 8.0),
                    Text('09:00 - 20:00', style: informationTextStyle,),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.monetization_on),
                    const SizedBox(height: 8.0),
                    Text('Rp 25.000', style: informationTextStyle,),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Berada di jalur utama Luar Angkasa, menjadi objek wisata yang tidak pernah sepi malaikat. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Semesta. Semua itu diterapkan dalam bentuk spot swafoto Instagramable',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              )),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
