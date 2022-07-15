import 'package:flutter/material.dart';
import 'package:movie/MovieList.dart';
import 'package:movie/helper.dart';
import 'package:movie/view.dart';



class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentindex =0;
  var children =
  [
    HomePage(trending: [

    ],),
    MovieList(),
    View(),
  ];

  void _onChanged(int index){//private function
    setState((){
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(//appBar,Body,bottomNavigation are its main properties
      body: children[_currentindex],
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xff1A6350),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onChanged,
        // selectedItemColor: Colors.greenAccent,
        // unselectedItemColor: Colors.redAccent,
        // selectedIconTheme: IconThemeData.***********,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            backgroundColor: Colors.white,
          ),

        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
   final List trending;

   const HomePage({super.key, required this.trending});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text('Trending Movies',style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 26,
            color: Colors.black,
          ),),

          Container(
            height: 270,
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: trending.length,itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500/' +
                                        trending[index]['poster_path']),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              trending[index]['title'] != null
                                  ? trending[index]['title']
                                  : 'Loading',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   const Color(0xFF1A6350),
//                   const Color(0xff303134),
//                 ],
//                 begin: const FractionalOffset(0.0, 0.0),
//                 end: const FractionalOffset(2.0, 0.0),
//                 stops: [0.0, 1.0],
//                 tileMode: TileMode.clamp),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AppBar(
//                 title: Text('Home'),
//                 backgroundColor: Color(0xff1A6350),
//               ),
//               SizedBox( height: 50,),
//               Text("Trending Movies ", style: TextStyle(
//                 fontFamily: 'Roboto',
//                 fontSize: 26,
//                 color: Colors.white,
//               ),),
//              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
