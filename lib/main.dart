import 'package:flutter/material.dart';
import 'package:movie_db/provider/movie_list_provider.dart';
import 'package:provider/provider.dart';

import 'movie_db_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => MovieListProvider()),
      ],
      child: const MovieDbApp(),
    ),
  );
}
