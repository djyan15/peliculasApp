import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {

  String _apikey = 'bfc35d3c1048b9a92c33a8b5ae50c985';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';





  Future<List<Pelicula>> getEnCines() async {
    // 3/movie/now_playing?
    
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language
    });
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    // print(decodedData['results']);

   return null;



  }


}