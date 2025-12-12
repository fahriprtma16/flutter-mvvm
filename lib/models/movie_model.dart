import 'package:flutter_dotenv/flutter_dotenv.dart';


class Movie {
  final String title;
  final String year;
  final String poster;
  final String imdbID;
  final int id;

  Movie ({
    required this.title,
    required this.year,
    required this.poster,
    required this.imdbID, 
    required this.id,

  });

  factory Movie.fromJson(Map<String,dynamic> json) {
    return Movie(
      id : json['id'] ?? 0,
      title: json['Title'] ?? 'No Title', 
      year: json['Year'] ?? 'N/A', 
      poster: (json['Poster'] != null && json['Poster'] != 'N/A')
        ? json['Poster']
        : dotenv.env['DUMMY_POSTER_URL'], 
      imdbID: json['imdbID'] ?? '',
    );  
  }
}