class listMovie {
  List<Search>? search;
  String? error;

  listMovie(
      {this.search,
        this.error,
      }
      );

  listMovie.fromJson(Map<String, dynamic> json) {
    if (json['Search'] != null) {
      search = <Search>[];
      json['Search'].forEach((v) {
        search!.add(new Search.fromJson(v));
      });
    }
  }

  factory listMovie.withError(String error) => listMovie(error: error);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.search != null) {
      data['Search'] = this.search!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Search {
  String? imdbID;
  String? title;
  String? year;
  String? poster;

  Search({this.imdbID, this.title, this.year, this.poster});

  Search.fromJson(Map<String, dynamic> json) {
    imdbID = json['imdbID'];
    title = json['Title'];
    year = json['Year'];
    poster = json['Poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imdbID'] = this.imdbID;
    data['Title'] = this.title;
    data['Year'] = this.year;
    data['Poster'] = this.poster;
    return data;
  }
}
