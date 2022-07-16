import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {

  var scroll =[
    'all',
    'movie',
    'Related',
    'new',
    'songs',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xff1A6350)),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xff1A6350)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff1A6350),
                ),
                child: Center(
                  child: Text(
                    'ALL',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff1A6350),
                ),
                child: Center(
                  child: Text(
                    'Movie',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff1A6350),
                ),
                child: Center(
                  child: Text(
                    'Songs',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff1A6350),
                ),
                child: Center(
                  child: Text(
                    'List',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         SizedBox(
          //           height: 75,
          //           child: ListView.builder(itemBuilder: (context, index) => Container(
          //             height: 50,
          //             width: 50,
          //             margin: EdgeInsets.all(10),
          //             child: Center(
          //               child: Row(
          //                 children: [
          //                   CircleAvatar(
          //                     radius: 20,
          //                       child: Text("${scroll[index]}")),
          //                 ],
          //               ),
          //             ),
          //           )),
          //         )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
