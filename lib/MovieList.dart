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
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(itemBuilder: (context, index) => Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text("${scroll[index]}"),
                      ),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
