import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';

//Este repositorio es inmutable
final movieReposirotyProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
