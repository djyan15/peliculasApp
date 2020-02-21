import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> movies;

  CardSwiper({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            // child: Image(image: NetworkImage('http://via.placeholder.com/350x150'))
            // FadeInImage(placeholder: AssetImage('assets/no-image.jpg'), image: NetworkImage('http://via.placeholder.com/350x150'))
            child: FadeInImage(placeholder: AssetImage('assets/img/no-image.jpg'), image: NetworkImage(movies[index].getPosterImg()))
          );
        },
        itemCount: 3,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        // pagination: SwiperPagination(),
        // control:  SwiperControl(),
      ),
    );
  }
}
