import 'package:flutter/material.dart';
import 'package:movie_db/domain/api/movie_list_api.dart';
import 'package:movie_db/domain/data_models/movie_list_response_model.dart';
import 'package:movie_db/domain/data_models/movie_model.dart';

class MainNavigationProvider extends ChangeNotifier {
  int selectedIndex = 1;

  List<Movie> moviesList = [];
  List<String> genres = [
    "Comedies",
    "Crime",
    "Family",
    "Documentaries",
    "Dramas",
    "Fantasy",
    "Holidays",
    "Horror",
    "Sci-Fi",
    "Thriller"
  ];

  /// changes selected tab of bottom navigation
  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<void> getMovieList() async {
    MovieListResponseModel? model = await MovieListAPI().getMovieList();
    if (model != null) {
      moviesList = model.results;
      // for (Movie movie in moviesList) {
      //   var images =
      //       await MovieDetailsAPI().getMovieImages(movie.id.toString());
      //   movie.images = images;
      // }
    }
  }
}
