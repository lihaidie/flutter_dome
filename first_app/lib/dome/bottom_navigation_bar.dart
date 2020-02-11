import 'package:flutter/material.dart';

// class BottomNavigationBarDemo extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return _BottomNavigationBarDemoState();
//   }

// }

// class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
//    int _currentIndex = 0;

//    void _onTapHander(int index){
//      setState(() => {
//        _currentIndex = index
//      });
//    }

//    @override
//    Widget build(BuildContext context){
//      return BottomNavigationBar(
//        currentIndex: _currentIndex,
//        onTap: _onTapHander,
//        type: BottomNavigationBarType.fixed,
//        fixedColor: Colors.black,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(Icons.explore),
//            title: Text('Explore'),
//          ),
//          BottomNavigationBarItem(
//            icon:Icon(Icons.history),
//            title: Text('History'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.list),
//            title: Text('List'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('My'),
//          ),
//        ],
//      );
//    }
// }

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {

  int _currentIndex = 0;

  void _onTapHanders(int index) {
    setState(() => {
      _currentIndex = index
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHanders,
      type:BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.history),
          title: Text('history'),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.list),
          title: Text('List'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My'),
        ),
      ],
    );
  }
}