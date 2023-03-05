import 'package:movie_db/domain/config/config.dart';
import 'package:movie_db/domain/data_models/movie_details_response_model.dart';
import 'package:movie_db/domain/data_models/movie_images_response_model.dart';
import 'package:movie_db/resources/routes.dart';

import 'base_api.dart';

class MovieDetailsAPI extends BaseAPI {
  Future<MovieDetails?> getMovieDetails(String movieId) async {
    try {
      String url = "${Config.root}${Routes.movieData.url}";
      var response = await getRequest(url, movieId);
      if (response == null) {
        return null;
      } else {
        var model = MovieDetails.fromJson(response.data);
        return model;
      }
    } catch (e) {
      return null;
    }
  }

  Future<MovieImagesResponseModel?> getMovieImages(String movieId) async {
    try {
      String url = "${Config.root}${Routes.movieData.url}";

      var response = await getRequest(url, '$movieId/images');
      if (response == null) {
        return null;
      } else {
        var model = MovieImagesResponseModel.fromJson(response.data);
        return model;
      }
    } catch (e) {
      return null;
    }
  }
}
