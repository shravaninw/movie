import 'package:flutter/material.dart';
import 'package:movie/views/widgets/gird.dart';
// ignore: use_key_in_widget_constructors
class Movie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Text('Book Movie'),
          backgroundColor: Colors.black26,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          // ignore: always_specify_types
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(icon: const Icon(Icons.search), onPressed: () {}))
          ],
          bottom: const TabBar(
            // ignore: always_specify_types
            tabs: [
              Tab(
                child: Text('Popular'),
              ),
              Tab(child: Text('Top Rated')),
              Tab(child: Text('Upcoming')),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.movie),
                title: Text('Movies'),
              ),
              ListTile(
                leading: Icon(Icons.tv),
                title: Text('Tv Shows'),
              ),
              ListTile(
                leading: Icon(Icons.event_seat),
                title: Text('Discover'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Popular People'),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text('Remainders'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Discover'),
              ),
              ListTile(
                leading: Icon(Icons.contact_support),
                title: Text('Google+ Community'),
              ),
              ListTile(
                leading: Icon(Icons.lock_open),
                title: Text('Unlock Pro'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: const TabBarView(

          // ignore: always_specify_types
          children: [
            MovieGrid(tab: 'Popular'),
            MovieGrid(tab: 'TopRated'),
            MovieGrid(tab: 'Upcoming'),
          ],
        ),
      ),
    );
  }
}
