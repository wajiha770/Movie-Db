import 'package:flutter/material.dart';
import 'package:movie_db/domain/data_models/movie_model.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;
  const MovieDetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 400,
          color: const Color(0xFF564CA3),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Watch",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Spacer(),
              Text(
                movie.title,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "In Theaters ${movie.releaseDate.toString().split(" ").first}",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                    child: Text(
                  "Get Tickets",
                  style: const TextStyle(fontSize: 18),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.play_arrow),
                    const Text(
                      "Watch Trailer",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Genres",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFF15D2BC),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                )),
            Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFFE26CA5),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                )),
            Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFF564CA3),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                )),
            Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFFCD9D0F),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                )),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Overview",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            movie.overview,
            style: const TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ),
      ]),
    );
  }
}
