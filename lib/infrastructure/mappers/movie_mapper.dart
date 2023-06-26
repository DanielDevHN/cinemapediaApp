import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDb moviedb) => Movie(
        backdropPath: (moviedb.backdropPath != '')
            ? "https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}"
            : 'https://www.tgv.com.my/assets/images/404/movie-poster.jpg',
        genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
        adult: moviedb.adult,
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: (moviedb.posterPath != '')
            ? "https://image.tmdb.org/t/p/w500/${moviedb.posterPath}"
            : 'no-poster',
        releaseDate: moviedb.releaseDate,
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );
}
