import 'package:flutter/material.dart';
import '../model/post.dart';

class  SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            backgroundColor: Colors.white10,
            title:Text('李哲 你好！'),
            centerTitle: true,
            // pinned: true,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Nihao Flutter'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                posts[0].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
           
           sliver:  SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGridDemo(),
          ),
         ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return null;
    }
}

class SliverGridDemo  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              // crossAxisCount: 2,
              maxCrossAxisExtent: 250,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.9,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length,
            ),
          );
  }
}