import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_providers.dart';

///wwemzKWzjKYJFfCeiB57q3r4Bcm.svg

import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  final peliculasProvider = new PeliculasProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[_swiperTarjetas()],
        ),
      ),
    );
  }

  Widget _swiperTarjetas() {
    return FutureBuilder(
      future: peliculasProvider.getEnCines(),
      // initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(movies: snapshot.data);
         // return CardSwiper(movies: []);
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator()
              ));
        }
      },
    );
  }
}
