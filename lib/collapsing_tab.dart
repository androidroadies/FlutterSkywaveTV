import 'package:flutter/material.dart';
import 'package:skywavetvapp/Homepage.dart';

class CollapsingTab extends StatefulWidget {
  @override
  _CollapsingTabState createState() => new _CollapsingTabState();
}

class _CollapsingTabState extends State<CollapsingTab> {
  ScrollController scrollController;

   List dataUpcomingBirthdays = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

   List dataUpcomingBirthdaystwo = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List dataUpcomingBirthdaysthree = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  Widget _buildActions() {
    Widget profile = new GestureDetector(
      onTap: () {
           Navigator.push(context, 
               new MaterialPageRoute(
               builder: (context) => CollapsingProfile()
              )
             );
      },
      child: new Container(
        height: 30.0,
        width: 45.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          image: new DecorationImage(
             image: AssetImage('assets/images/ConcreteImpeccableIndochinesetiger-small.gif'),
            fit: BoxFit.fitHeight,
          ),
          border: Border.all(color: Colors.pink, width: 2.0),
        ),
      ),
    );

    double scale;
    if (scrollController.hasClients) {
      scale = scrollController.offset / 100;
      scale = scale * 2;
      if (scale > 1) {
        scale = 1.0;
      }
    } else {
      scale = 0.0;
    }

    return new Transform(
      transform: new Matrix4.identity()..scale(scale, scale),
      alignment: Alignment.center,
      child: profile,
    );
  }

  @override
  void dispose() {
    //scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
    scrollController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    var flexibleSpaceWidget = new SliverAppBar(
      backgroundColor: Colors.purple.shade200,
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/images/ConcreteImpeccableIndochinesetiger-small.gif',
          fit: BoxFit.fitWidth,
          ),
          
          ),
      actions: <Widget>[
        new Padding(
          padding: EdgeInsets.all(5.0),
        
          child: _buildActions(),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: new DefaultTabController(
        length: 4,
        child: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              flexibleSpaceWidget,
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.purple,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.folder)),
                      Tab(icon: Icon(Icons.cloud_download)),
                      Tab(icon: Icon(Icons.search)),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  //Padding(padding: null)
                   Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 00.0),
                        child: Container(
                          height: 40.0,
                          width: 200.0,
                          alignment: Alignment.center,
                          color: Colors.purple.shade900,
                          child:Text('Trending',
                            style: TextStyle(
                                 color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                                ),
                        )
                      ),  
                      Container(
                        height: 250.0,
                        child: _buildListviewUpcomingBirthdays(),
                      ),
                      
                      Container(
                        height: 150,
                        child: _buildListviewUpcomingBirthdaystwo(),
                      ), 
                       Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 00.0),
                        child: Container(
                          height: 40.0,
                          width: 200.0,
                          alignment: Alignment.center,
                          color: Colors.purple.shade900,
                          child:Text('Movie',
                            style: TextStyle(
                                 color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                                ),
                        )
                      ), 
                      Container(
                        height: 180,
                        child: _buildListviewUpcomingBirthdaysthree(),
                      ) ,
                    
                    
                ],
              ),
               Container(
                // height: 190.0,
                //  child: _buildListviewUpcomingBirthdays(),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 650,
                        child: _buildListviewUpcomingBirthdaysfolder(),
                    )
                  ],
                ),
              ),
               Container(

                   child: Column(
                  children: <Widget>[
                    Container(
                        height: 650,
                        child: _buildUpcomingBirthdaysfour(),
                    )
                  ],
                ),
                //_buildUpcomingBirthdaysfour()
              ),
               Container(
                height: 150,
                child: _buildListviewUpcomingBirthdays(),
              ),
            ],
          ),
        ),
      ),
    );
  }

   Widget _buildListviewUpcomingBirthdays(){
           return ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0.0),
          itemCount: dataUpcomingBirthdays.length,
          itemBuilder: (context, index){
            return _buildUpcomingBirthdays(dataUpcomingBirthdays[index]);
          }
          );
         
      }

   Widget _buildUpcomingBirthdays(item) {
        return InkWell(
          onTap: () {
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow,
            ),
             width: 400.0,
             margin: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  child:  Container(
                    height: 234.0,
                     width: 400.0,
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                       child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                )
              ],
            )
          ) 
        );
      }


      Widget _buildListviewUpcomingBirthdaystwo(){
           return ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0.0),
          itemCount: dataUpcomingBirthdaystwo.length,
          itemBuilder: (context, index){
            return _buildUpcomingBirthdaystwo(dataUpcomingBirthdaystwo[index]);
          }
          );
         
      }

   Widget _buildUpcomingBirthdaystwo(item) {
        return InkWell(
          onTap: () {
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow,
            ),
             width: 250.0,
             margin: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  child:  Container(
                    height: 134.0,
                     width: 400.0,
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                       child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                )
              ],
            )
          ) 
        );
      }


      Widget _buildListviewUpcomingBirthdaysthree(){
             return ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0.0),
          itemCount: dataUpcomingBirthdaysthree.length,
          itemBuilder: (context, index){
            return _buildUpcomingBirthdaysthree(dataUpcomingBirthdaysthree[index]);
          }
          );
         
      }

   Widget _buildUpcomingBirthdaysthree(item) {
        return InkWell(
          onTap: () {
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow,
            ),
             width: 400.0,
             margin: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  child:  Container(
                    height: 164.0,
                     width: 400.0,
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                       child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                )
              ],
            )
          ) 
        );
      }


      Widget _buildListviewUpcomingBirthdaysfolder(){
             return ListView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(0.0),
          itemCount: dataUpcomingBirthdaysthree.length,
          itemBuilder: (context, index){
            return _buildUpcomingBirthdaysfolder(dataUpcomingBirthdaysthree[index]);
          }
          );
         
      }

   Widget _buildUpcomingBirthdaysfolder(item) {
        return InkWell(
          onTap: () {
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black,
            ),
             width: 400.0,
             margin: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child:  Container(
                    height: 164.0,
                     width: 200.0,
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                       child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                ),
              ],
            )
          ) 
        );
      }

        Widget _buildUpcomingBirthdaysfour() {
         return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Center(child: Text("Not Download",style: TextStyle(
                                 color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),)),
              );
      }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
