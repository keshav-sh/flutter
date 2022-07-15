import 'package:flutter/material.dart';
import 'package:movie/HomePage.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Helper extends StatefulWidget {
  const Helper({Key? key}) : super(key: key);

  @override
  State<Helper> createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  List trendingmovies = [];
  List topratedmovies =[];

  final String apikey = '8bed60782fa09b932fcbd748a06c8320';
  final String readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YmVkNjA3ODJmYTA5YjkzMmZjYmQ3NDhhMDZjODMyMCIsInN1YiI6IjYyYzNjZWVlNmEzMDBiMDA0YzU1OTUxZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bihAXAF0DvelkEWs-_IGuXEWbgd6AmXpu__tz42WcRM';

   @override
   void initState(){
     loadmovies();
     super.initState();
   }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();


    setState((){
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
    });
    print(trendingmovies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomePage(trending: trendingmovies,),
        ],
      ),
    );
  }
}
