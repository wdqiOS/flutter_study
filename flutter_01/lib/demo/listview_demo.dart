import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index){
      return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl),
            Text(
              posts[index].title,
              style: TextStyle(
                color: Colors.red[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
              ),
            Text(posts[index].author),
          ],
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }
}