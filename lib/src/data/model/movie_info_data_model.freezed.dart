// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieInfoDataModel _$MovieInfoDataModelFromJson(Map<String, dynamic> json) {
  return _MovieInfoDataModel.fromJson(json);
}

/// @nodoc
mixin _$MovieInfoDataModel {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  CollectionDataModel? get collection => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<GenreDataModel>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String? get tatus => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<CompanyDataModel>? get companies => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<CountryDataModel>? get countries => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<LanguageDataModel>? get languages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieInfoDataModelCopyWith<MovieInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoDataModelCopyWith<$Res> {
  factory $MovieInfoDataModelCopyWith(
          MovieInfoDataModel value, $Res Function(MovieInfoDataModel) then) =
      _$MovieInfoDataModelCopyWithImpl<$Res, MovieInfoDataModel>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries') List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages') List<LanguageDataModel>? languages});

  $CollectionDataModelCopyWith<$Res>? get collection;
}

/// @nodoc
class _$MovieInfoDataModelCopyWithImpl<$Res, $Val extends MovieInfoDataModel>
    implements $MovieInfoDataModelCopyWith<$Res> {
  _$MovieInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? tatus = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionDataModel?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDataModel>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      tatus: freezed == tatus
          ? _value.tatus
          : tatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDataModel>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageDataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionDataModelCopyWith<$Res>? get collection {
    if (_value.collection == null) {
      return null;
    }

    return $CollectionDataModelCopyWith<$Res>(_value.collection!, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieInfoDataModelCopyWith<$Res>
    implements $MovieInfoDataModelCopyWith<$Res> {
  factory _$$_MovieInfoDataModelCopyWith(_$_MovieInfoDataModel value,
          $Res Function(_$_MovieInfoDataModel) then) =
      __$$_MovieInfoDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries') List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages') List<LanguageDataModel>? languages});

  @override
  $CollectionDataModelCopyWith<$Res>? get collection;
}

/// @nodoc
class __$$_MovieInfoDataModelCopyWithImpl<$Res>
    extends _$MovieInfoDataModelCopyWithImpl<$Res, _$_MovieInfoDataModel>
    implements _$$_MovieInfoDataModelCopyWith<$Res> {
  __$$_MovieInfoDataModelCopyWithImpl(
      _$_MovieInfoDataModel _value, $Res Function(_$_MovieInfoDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? tatus = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_$_MovieInfoDataModel(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionDataModel?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDataModel>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      tatus: freezed == tatus
          ? _value.tatus
          : tatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDataModel>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieInfoDataModel implements _MovieInfoDataModel {
  const _$_MovieInfoDataModel(
      {this.adult,
      @JsonKey(name: 'backdrop_path')
          this.backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          this.collection,
      this.budget,
      final List<GenreDataModel>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id')
          this.imdbId,
      @JsonKey(name: 'original_language')
          this.originalLanguage,
      @JsonKey(name: 'original_title')
          this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path')
          this.posterPath,
      @JsonKey(name: 'release_date')
          this.releaseDate,
      this.revenue,
      this.runtime,
      this.tatus,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average')
          this.voteAverage,
      @JsonKey(name: 'vote_count')
          this.voteCount,
      @JsonKey(name: 'production_companies')
          final List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries')
          final List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages')
          final List<LanguageDataModel>? languages})
      : _genres = genres,
        _companies = companies,
        _countries = countries,
        _languages = languages;

  factory _$_MovieInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieInfoDataModelFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final CollectionDataModel? collection;
  @override
  final int? budget;
  final List<GenreDataModel>? _genres;
  @override
  List<GenreDataModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  @override
  final String? tatus;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final List<CompanyDataModel>? _companies;
  @override
  @JsonKey(name: 'production_companies')
  List<CompanyDataModel>? get companies {
    final value = _companies;
    if (value == null) return null;
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CountryDataModel>? _countries;
  @override
  @JsonKey(name: 'production_countries')
  List<CountryDataModel>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguageDataModel>? _languages;
  @override
  @JsonKey(name: 'spoken_languages')
  List<LanguageDataModel>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieInfoDataModel(adult: $adult, backdropPath: $backdropPath, collection: $collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, tatus: $tatus, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, companies: $companies, countries: $countries, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieInfoDataModel &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.tatus, tatus) || other.tatus == tatus) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        collection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        revenue,
        runtime,
        tatus,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        const DeepCollectionEquality().hash(_companies),
        const DeepCollectionEquality().hash(_countries),
        const DeepCollectionEquality().hash(_languages)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieInfoDataModelCopyWith<_$_MovieInfoDataModel> get copyWith =>
      __$$_MovieInfoDataModelCopyWithImpl<_$_MovieInfoDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieInfoDataModelToJson(
      this,
    );
  }
}

abstract class _MovieInfoDataModel implements MovieInfoDataModel {
  const factory _MovieInfoDataModel(
      {final bool? adult,
      @JsonKey(name: 'backdrop_path')
          final String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          final CollectionDataModel? collection,
      final int? budget,
      final List<GenreDataModel>? genres,
      final String? homepage,
      final int? id,
      @JsonKey(name: 'imdb_id')
          final String? imdbId,
      @JsonKey(name: 'original_language')
          final String? originalLanguage,
      @JsonKey(name: 'original_title')
          final String? originalTitle,
      final String? overview,
      final double? popularity,
      @JsonKey(name: 'poster_path')
          final String? posterPath,
      @JsonKey(name: 'release_date')
          final String? releaseDate,
      final int? revenue,
      final int? runtime,
      final String? tatus,
      final String? tagline,
      final String? title,
      final bool? video,
      @JsonKey(name: 'vote_average')
          final double? voteAverage,
      @JsonKey(name: 'vote_count')
          final int? voteCount,
      @JsonKey(name: 'production_companies')
          final List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries')
          final List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages')
          final List<LanguageDataModel>? languages}) = _$_MovieInfoDataModel;

  factory _MovieInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_MovieInfoDataModel.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  CollectionDataModel? get collection;
  @override
  int? get budget;
  @override
  List<GenreDataModel>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  String? get tatus;
  @override
  String? get tagline;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(name: 'production_companies')
  List<CompanyDataModel>? get companies;
  @override
  @JsonKey(name: 'production_countries')
  List<CountryDataModel>? get countries;
  @override
  @JsonKey(name: 'spoken_languages')
  List<LanguageDataModel>? get languages;
  @override
  @JsonKey(ignore: true)
  _$$_MovieInfoDataModelCopyWith<_$_MovieInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
