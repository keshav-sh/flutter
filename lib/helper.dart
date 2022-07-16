import 'package:flutter/material.dart';

import 'package:movie/descrption.dart';




class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({super.key, required this.trending});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Trending Movies",style: TextStyle(fontSize: 26,fontFamily: 'Roboto',color: Colors.white),),
          SizedBox(height: 10),
          Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                  name: trending[index]['title'],
                                  bannerurl:
                                  'https://image.tmdb.org/t/p/w500' +
                                      trending[index]['backdrop_path'],
                                  posterurl:
                                  'https://image.tmdb.org/t/p/w500' +
                                      trending[index]['poster_path'],
                                  description: trending[index]['overview'],
                                  vote: trending[index]['vote_average']
                                      .toString(),
                                  launch_on: trending[index]
                                  ['release_date'],
                                )));
                      },
                      child: Container(
                        width: 140,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500' +
                                          trending[index]['poster_path']),
                                ),
                              ),
                              height: 200,
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                   trending[index]['title'] != null
                                      ? trending[index]['title']
                                      : 'Loading',style: TextStyle(fontSize: 16,color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

/*class Helper extends StatefulWidget {
  const Helper({Key? key}) : super(key: key);

  @override
  State<Helper> createState() => _HelperState();
}

class _HelperState extends State<Helper> {


  final String apikey = '8bed60782fa09b932fcbd748a06c8320';
  final String readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YmVkNjA3ODJmYTA5YjkzMmZjYmQ3NDhhMDZjODMyMCIsInN1YiI6IjYyYzNjZWVlNmEzMDBiMDA0YzU1OTUxZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bihAXAF0DvelkEWs-_IGuXEWbgd6AmXpu__tz42WcRM';

  List trendingmovies = [];
  List topratedmovies =[];
   @override
   void initState(){

     super.initState();
     loadmovies();
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

    print((trendingmovies
    ));

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
}*/




//
// Container(
// padding: EdgeInsets.all(10),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start ,
// children: [
// Text('Trending Movies',style: TextStyle(
// fontFamily: 'Roboto',
// fontSize: 26,
// color: Colors.black,
// ),),
//
// Container(
// height: 270,
// child: ListView.builder(
// shrinkWrap: true,
// itemCount: trending.length,itemBuilder: (context, index){
// return InkWell(
// onTap: (){
//
// },
// child: Container(
// width: 140,
// child: Column(
// children: [
// Container(
// height: 200,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: NetworkImage(
// 'https://image.tmdb.org/t/p/w500/' +
// trending[index]['poster_path']),
// ),
// ),
// ),
// Container(
// child: Text(
// trending[index]['title'] != null
// ? trending[index]['title']
//     : 'Loading',
// style: TextStyle(
// color: Colors.black,
// fontFamily: 'Roboto',
// fontSize: 14,
// ),
// ),
// )
// ],
// ),
// ),
// );
// }),
// ),
// ],
// ),
// );