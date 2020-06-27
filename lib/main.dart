import 'package:banco_jogos/game-list.dart';
import 'package:banco_jogos/no-data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game History Data Base',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      home: MainPage(title: 'Idades da História'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Games of History Database'),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        color: Colors.black,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: new Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Image.asset(
                            'lib/assets/images/historia-antiga.jpg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História Antiga',
                                        )));
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História Antiga',
                                        )));
                          },
                          title: Text(
                            'Veja os jogos de História Antiga',
                            style: TextStyle(
                                color: Colors.orange[900], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: new Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Image.asset(
                            'lib/assets/images/historia-medieval.jpg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameListPage(
                                          title: 'Jogos de História Medieval',
                                        )));
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameListPage(
                                          title: 'Jogos de História Medieval',
                                        )));
                          },
                          title: Text(
                            'Veja os jogos de História Medieval',
                            style: TextStyle(
                                color: Colors.orange[900], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: new Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Image.asset(
                            'lib/assets/images/historia-moderna.jpg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História Moderna',
                                        )));
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História Moderna',
                                        )));
                          },
                          title: Text(
                            'Veja os jogos de História Moderna',
                            style: TextStyle(
                                color: Colors.orange[900], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: new Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Image.asset(
                            'lib/assets/images/historia-contemporanea.jpg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title:
                                              'Jogos de História Contemporânea',
                                        )));
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title:
                                              'Jogos de História Contemporânea',
                                        )));
                          },
                          title: Text(
                            'Veja os jogos de História Contemporânea',
                            style: TextStyle(
                                color: Colors.orange[900], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: new Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Image.asset(
                            'lib/assets/images/historia-brasil.jpg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História do Brasil',
                                        )));
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDataPage(
                                          title: 'Jogos de História do Brasil',
                                        )));
                          },
                          title: Text(
                            'Veja os jogos de História do Brasil',
                            style: TextStyle(
                                color: Colors.orange[900], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
