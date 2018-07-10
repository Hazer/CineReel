// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MovieDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return new MovieDetails(
      json['adult'] as bool,
      json['backdrop_path'] as String,
      json['belongs_to_collection'],
      json['budget'] as int,
      (json['genres'] as List)
          ?.map((e) =>
              e == null ? null : new Genre.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['homepage'],
      json['id'] as int,
      json['imdb_id'] as String,
      json['original_language'] as String,
      json['original_title'] as String,
      json['overview'] as String,
      (json['popularity'] as num)?.toDouble(),
      json['poster_path'] as String,
      (json['production_companies'] as List)
          ?.map((e) => e == null
              ? null
              : new ProductionCompany.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['production_countries'] as List)
          ?.map((e) => e == null
              ? null
              : new ProductionCountry.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['release_date'] as String,
      json['revenue'] as int,
      json['runtime'] as int,
      (json['spoken_languages'] as List)
          ?.map((e) => e == null
              ? null
              : new SpokenLanguage.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['status'] as String,
      json['tag_line'] as String,
      json['title'] as String,
      json['video'] as bool,
      (json['vote_average'] as num)?.toDouble(),
      json['vote_count'] as int,
      json['status_message'] as String);
}

abstract class _$MovieDetailsSerializerMixin {
  String get status_message;
  String get backdropPath;
  Object get belongsToCollection;
  String get imdbId;
  String get originalLanguage;
  String get originalTitle;
  String get posterPath;
  List<ProductionCompany> get productionCompanies;
  List<ProductionCountry> get productionCountries;
  String get releaseDate;
  List<SpokenLanguage> get spokenLanguages;
  String get tagline;
  double get voteAverage;
  int get voteCount;
  String get overview;
  bool get adult;
  int get budget;
  List<Genre> get genres;
  Object get homepage;
  int get id;
  double get popularity;
  int get revenue;
  int get runtime;
  String get status;
  String get title;
  bool get video;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'status_message': status_message,
        'backdrop_path': backdropPath,
        'belongs_to_collection': belongsToCollection,
        'imdb_id': imdbId,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'poster_path': posterPath,
        'production_companies': productionCompanies,
        'production_countries': productionCountries,
        'release_date': releaseDate,
        'spoken_languages': spokenLanguages,
        'tag_line': tagline,
        'vote_average': voteAverage,
        'vote_count': voteCount,
        'overview': overview,
        'adult': adult,
        'budget': budget,
        'genres': genres,
        'homepage': homepage,
        'id': id,
        'popularity': popularity,
        'revenue': revenue,
        'runtime': runtime,
        'status': status,
        'title': title,
        'video': video
      };
}

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) {
  return new ProductionCompany(json['id'] as int, json['logoPath'],
      json['name'] as String, json['originCountry'] as String);
}

abstract class _$ProductionCompanySerializerMixin {
  int get id;
  Object get logoPath;
  String get name;
  String get originCountry;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'logoPath': logoPath,
        'name': name,
        'originCountry': originCountry
      };
}

ProductionCountry _$ProductionCountryFromJson(Map<String, dynamic> json) {
  return new ProductionCountry(
      json['iso31661'] as String, json['name'] as String);
}

abstract class _$ProductionCountrySerializerMixin {
  String get iso31661;
  String get name;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'iso31661': iso31661, 'name': name};
}

SpokenLanguage _$SpokenLanguageFromJson(Map<String, dynamic> json) {
  return new SpokenLanguage(json['iso6391'] as String, json['name'] as String);
}

abstract class _$SpokenLanguageSerializerMixin {
  String get iso6391;
  String get name;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'iso6391': iso6391, 'name': name};
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return new Genre(json['id'] as int, json['name'] as String);
}

abstract class _$GenreSerializerMixin {
  int get id;
  String get name;
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'name': name};
}