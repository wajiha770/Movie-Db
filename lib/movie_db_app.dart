import 'package:flutter/material.dart';
import 'package:movie_db/ui/movie_list_page.dart';

import 'resources/app_theme_data.dart';

class MovieDbApp extends StatefulWidget {
  const MovieDbApp({Key? key}) : super(key: key);

  @override
  State<MovieDbApp> createState() => _MovieDbAppState();
}

class _MovieDbAppState extends State<MovieDbApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB',
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => "TMDB",
      theme: appThemeData,
      home: const MovieListPage(),
    );
  }
}
