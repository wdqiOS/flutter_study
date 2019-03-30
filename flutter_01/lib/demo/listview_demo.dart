import 'package:flutter/material.dart';
import './post_show.dart';
import '../model/post.dart';


class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index){
      return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 19/9,
                  child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
                ),
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
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PostShow(post: posts[index])),
                    );
                  },
                ),
              ),
            ),
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