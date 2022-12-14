import 'package:flutter/material.dart';
import 'package:wanna_go/model/tourism_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Staatliches');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

// class DetailScreen extends StatelessWidget {
//   final TourismPlace place;

//   const DetailScreen({Key? key, required this.place}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           ///Image.asset('assets/images/pexels-caleb-oquendo-3031100.jpg'),
//           Stack(
//             children: <Widget>[
//               Image.network(place.imageUrls[0]),
//               SafeArea(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.grey,
//                         child: IconButton(
//                           icon: const Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                           ),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         ),
//                       ),
//                       const FavoriteButton(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           Container(
//               margin: const EdgeInsets.only(top: 16.0),
//               child: Text(
//                 place.name,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 30.0,
//                   fontFamily: 'Staatliches',
//                 ),
//               )),
//           Container(
//             margin: const EdgeInsets.only(top: 16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     const Icon(Icons.calendar_today),
//                     const SizedBox(height: 8.0),
//                     Text(
//                       place.openDays,
//                       style: informationTextStyle,
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: <Widget>[
//                     const Icon(Icons.access_time),
//                     const SizedBox(height: 8.0),
//                     Text(
//                       place.openTime,
//                       style: informationTextStyle,
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: <Widget>[
//                     const Icon(Icons.monetization_on),
//                     const SizedBox(height: 8.0),
//                     Text(
//                       place.ticketPrice,
//                       style: informationTextStyle,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//               margin: const EdgeInsets.only(top: 16.0),
//               child: Text(
//                 //'Berada di jalur utama Luar Angkasa, menjadi objek wisata yang tidak pernah sepi malaikat. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Semesta. Semua itu diterapkan dalam bentuk spot swafoto Instagramable',
//                 place.description,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
//               )),
//           SizedBox(
//             height: 150,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: place.imageUrls.map((url) {
//                 return Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.network(url),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//           // children: [
//           //   Padding(
//           //     padding: const EdgeInsets.all(4.0),
//           //     child: ClipRRect(
//           //       borderRadius: BorderRadius.circular(16.0),
//           //       child: Image.network(
//           //           'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
//           //     ),
//           //   ),
//           //   Padding(
//           //     padding: const EdgeInsets.all(4.0),
//           //     child: ClipRRect(
//           //       borderRadius: BorderRadius.circular(16.0),
//           //       child: Image.network(
//           //           'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
//           //     ),
//           //   ),
//           //   Padding(
//           //     padding: const EdgeInsets.all(4.0),
//           //     child: ClipRRect(
//           //       borderRadius: BorderRadius.circular(16.0),
//           //       child: Image.network(
//           //           'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
//           //     ),
//           //   ),
//           // ],
//         ],
//       ),
//     )));
//   }
// }

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final TourismPlace place;
  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ///Image.asset('assets/images/pexels-caleb-oquendo-3031100.jpg'),
          Stack(
            children: <Widget>[
              Image.network(place.imageUrls[0]),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                    Text(
                      place.openDays,
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.access_time),
                    const SizedBox(height: 8.0),
                    Text(
                      place.openTime,
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.monetization_on),
                    const SizedBox(height: 8.0),
                    Text(
                      place.ticketPrice,
                      style: informationTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                //'Berada di jalur utama Luar Angkasa, menjadi objek wisata yang tidak pernah sepi malaikat. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Semesta. Semua itu diterapkan dalam bentuk spot swafoto Instagramable',
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              )),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: place.imageUrls.map((url) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(url),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    )));
  }
}

class DetailWebPage extends StatelessWidget {
  final TourismPlace place;
  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(place.imageAsset),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            height: 150,
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Scrollbar(
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: place.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.calendar_today),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        place.openDays,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.access_time),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    place.openTime,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    place.ticketPrice,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  place.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
