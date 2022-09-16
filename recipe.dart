class Sinopse{
  final String original_title;
  final String poster_url;
  final String overview; 
  final double vote_average; 

  Sinopse({ this.original_title,  this.poster_url,  this.overview,  this.vote_average});

  factory Sinopse.fromjson(dynamic json){
    return Sinopse(
      original_title: json['name'] as String,
      poster_url: json['poster_url'] [0] ['poster_url'] as String,
      overview: json['overview'] as String,
      vote_average: json['vote_average'] as double, 
    );
  }

    static Iterable recipesFromSnapshot(List snapshot){
      return snapshot.map(
        (data){
          return Sinopse.fromjson(data);
        }
      ). toList();
  }
}


