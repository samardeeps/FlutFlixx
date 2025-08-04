import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rust_api/models/movies.dart';

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=ca4660fa369598aafe07a5c141cfaf16';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=ca4660fa369598aafe07a5c141cfaf16';
  static const _upcomingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=ca4660fa369598aafe07a5c141cfaf16';

  Future<List<Movies>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('something happend');
    }
  }

  Future<List<Movies>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('something happend');
    }
  }

  Future<List<Movies>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(_upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('something happend');
    }
  }
}
