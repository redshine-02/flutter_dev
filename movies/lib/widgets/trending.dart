import 'package:flutter/material.dart';
import 'package:movies/utils/text.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(2, 5, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: modified_text( text: 'Trending Movies',color: Colors.red.shade900,size: 24,),
          ),
          
          SizedBox(height: 5),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: trending.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 140,
                      child: Column(children: [
                        Container(
                          height:200,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                            image: NetworkImage(
                                'https://image.tmdb.org/t/p/w500'+trending[index]['poster_path']
                            )
                            )),
                            ),
                            SizedBox(height:5),
                            Container(child:modified_text(
                                  size: 15,
                                  text: trending[index]['title'] != null
                                      ? trending[index]['title']
                                      : 'Loading', color: Colors.red.shade900,),
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