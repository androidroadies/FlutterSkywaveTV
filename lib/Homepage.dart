import 'package:flutter/material.dart';
import 'package:skywavetvapp/sliver_fab.dart';

class CollapsingProfile extends StatefulWidget {
  CollapsingProfile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CollapsingProfileState createState() => new _CollapsingProfileState();
}

class _CollapsingProfileState extends State<CollapsingProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Builder(
        builder: (context) => new SliverContainer(
              floatingActionButton: new Container(
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                 color: Colors.grey,
                  image: new DecorationImage(
                    image: AssetImage('assets/images/ConcreteImpeccableIndochinesetiger-small.gif'),
                    fit: BoxFit.cover,
                  ),
                  border:
                      Border.all(color: Colors.white, width: 2.0),
                ),
              ),

              expandedHeight: 256.0,
              slivers: <Widget>[
                new SliverAppBar(
                  iconTheme: IconThemeData(color: Colors.white),
                  expandedHeight: 256.0,
                  pinned: true,
                  flexibleSpace: new FlexibleSpaceBar(
                    title: new Text("Developer Libs main ",
                    style: TextStyle(color: Colors.white),
                    ),
                    background: new Image.asset(
                      "assets/images/ConcreteImpeccableIndochinesetiger-small.gif",
                      fit: BoxFit.fitHeight
                    ),
                  ),
                ),
                new SliverList(
                  delegate: new SliverChildListDelegate(
                    new List.generate(
                      30,
                      (int index) =>
                          new ListTile(title: new Text("Item")),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
