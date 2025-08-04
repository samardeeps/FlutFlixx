class Movies {
  String title;
  String? backdrop_path;
  String? original_title;
  String? overview;
  String? poster_path;
  String? release_date;
  double vote_average;

  Movies({
    required this.title,
    this.backdrop_path,
    this.original_title,
    this.overview,
    this.poster_path,
    this.release_date,
    required this.vote_average,
  });

  factory Movies.fromJson(Map<String, dynamic> json) {
    return Movies(
      title: json["title"] ?? "Unknown Title",
      backdrop_path: json["backdrop_path"],
      original_title: json["original_title"],
      overview: json["overview"],
      poster_path: json["poster_path"],
      release_date: json["release_date"],
      vote_average: (json["vote_average"] ?? 0.0).toDouble(),
    );
  }
}


// "backdrop_path": "/1YL8ksfwm3p2Tgt1yaNVYYOvOKC.jpg",
// "id": 1203329,
// "title": "The Witcher: Sirens of the Deep",
// "original_title": "The Witcher: Sirens of the Deep",
// "overview": "Geralt of Rivia, a mutated monster hunter, is hired to investigate a series of attacks in a seaside village and finds himself drawn into a centuries-old conflict between humans and merpeople. He must count on friends — old and new — to solve the mystery before the hostilities between the two kingdoms escalate into an all-out war.",
// "poster_path": "/mfy5SyaNBleBACs5mIVudDP7UNY.jpg",
// "media_type": "movie",
// "adult": false,
// "original_language": "en",
// "genre_ids": [
// 16,
// 14,
// 28
// ],
// "popularity": 57.742,
// "release_date": "2025-02-10",
// "video": false,
// "vote_average": 7.5,
// "vote_count": 10