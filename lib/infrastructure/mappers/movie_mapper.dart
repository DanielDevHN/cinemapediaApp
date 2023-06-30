import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';

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
            : 'https://eticketsolutions.com/demo/themes/e-ticket/img/movie.jpg',
        releaseDate:
            moviedb.releaseDate != null ? moviedb.releaseDate! : DateTime.now(),
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
        backdropPath: (moviedb.backdropPath != '')
            ? "https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}"
            : 'https://www.tgv.com.my/assets/images/404/movie-poster.jpg',
        genreIds: moviedb.genres.map((e) => e.name).toList(),
        adult: moviedb.adult,
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: (moviedb.posterPath != '')
            ? "https://image.tmdb.org/t/p/w500/${moviedb.posterPath}"
            : 'https://www.tgv.com.my/assets/images/404/movie-poster.jpg',
        releaseDate: moviedb.releaseDate,
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );
}
