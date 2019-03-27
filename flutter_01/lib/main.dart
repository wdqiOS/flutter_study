import 'package:flutter/material.dart';


var content = '爱你，李哲';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigation button is pressed.'),
          ),
          title: Text('你好'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'More',
              onPressed: () => debugPrint('More button is pressed.'),
            ),
          ],
          elevation: 5.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.0,
            
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12,),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12,),
            Icon(Icons.directions_boat, size: 128.0, color: Colors.black12,),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Header'.toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





