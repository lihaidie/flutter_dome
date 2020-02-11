// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//收藏例子

// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';


// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//    @override
//    Widget build(BuildContext context){
//       return new MaterialApp(
//         title: 'Startup name Generator111',
//         home: new RandomWords(),
//         theme: mDefaultTheme,
//      );
//    }
// }


// final ThemeData mDefaultTheme = new ThemeData(
//   primaryColor: Colors.blue,
//   scaffoldBackgroundColor: Colors.white,
//   cardColor: Color(0xff393a3f),
// );

// class RandomWords extends StatefulWidget{
//   @override
//   createState() => new RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords>{
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   final _saved = new Set<WordPair>();
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('startup name generator11'),
//         actions: <Widget>[
//           new IconButton(icon:new Icon(Icons.list),onPressed: _pushSaved),
//           new IconButton(icon:new Icon(Icons.fiber_new),onPressed: _newWord),
//         ],
//       ),
//       body: _buildSuggestions(),

//     );
//   }
  
//   Widget _buildSuggestions(){
//     return new ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context,i){
//         if(i.isOdd) return new Divider();
//         final index = i ~/ 2;
//         if(index >= _suggestions.length){
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair){
//     final alreadySaved = _saved.contains(pair);
//     return new ListTile(
//       title: new Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing:new Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: (){
//         setState((){
//           if(alreadySaved){
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },

//     );
//   }


// //跳转到收藏页
//   void _pushSaved(){
//     Navigator.of(context).push(
//       new MaterialPageRoute(
//         builder: (context){
//           final tiles = _saved.map(
//               (pair){
//                 return new ListTile(
//                   title:new Text(
//                     pair.asPascalCase,
//                     style: _biggerFont,
//                   ),
//                 );
//               },
//           );
//           final divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return new Scaffold(
//             appBar: new AppBar(
//               title: new Text('saved suggestions'),
//             ),
//             body: new ListView(children:divided),
//           );
//         },
//       ),
//     );
//   }

//   //新页面
//   Void _newWord(){

//   }

// }



import 'dart:developer';

import 'package:flutter/material.dart';
import './dome/listview_dome.dart';
import './dome/drawer_demo.dart';
import './dome/bottom_navigation_bar.dart';
import './dome/basic_demo.dart';
import './dome/layout_demo.dart';
import './dome/sliver_deme.dart';
import './dome/navigator_demo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //关闭右上角的banner 条
      // initialRoute: '/',
      // routes: {
      //   '/':(context) => Home(),
      //   '/about':(context) => Page(title: 'About')
      // },
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(225, 225, 225, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title:Text('mango'),
            actions:<Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed:() => debugPrint('search button is pressed.'),
              )
            ],
            elevation: 0.0,
            bottom:TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                    Tab(icon: Icon(Icons.local_florist)),
                    Tab(icon: Icon(Icons.change_history)),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.view_quilt)),
                ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              // RichTextDemo(),
              // StackDemo(),
              // TextDemo()
              LayoutDemo(),
              SliverDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ),
      );

  }

}

