import 'package:flutter/material.dart';

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           StackDemo(),
//         ],
//       ),
//     );
//   }
// }


// class StackDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topLeft,
//       children: <Widget>[
//         SizedBox(
//           width: 200.0,
//           height: 300.0,
//           child: Container(
//             alignment: Alignment(0.0, -0.9),
//             decoration: BoxDecoration(
//               color: Color.fromRGBO(3, 54, 255, 1.0),
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//         ),
//         SizedBox(height: 32.0),
//         SizedBox(
//           width: 100.0,
//           height: 100.0,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color.fromRGBO(3, 54, 255, 1.0),
//               shape: BoxShape.circle,
//               gradient: RadialGradient(colors: [
//                 Color.fromRGBO(7, 102, 255, 1.0),
//                 Color.fromRGBO(3, 54, 255, 1.0),
//               ]),
//             ),
//             child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
//           ),
//         ),
//         Positioned(
//           right: 20.0,
//           top: 20.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
//         ),
//         Positioned(
//           right: 40.0,
//           top: 60.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
//         ),
//         Positioned(
//           right: 20.0,
//           top: 120.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
//         ),
//         Positioned(
//           right: 70.0,
//           top: 180.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
//         ),
//         Positioned(
//           right: 30.0,
//           top: 230.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
//         ),
//         Positioned(
//           right: 90.0,
//           bottom: 20.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
//         ),
//         Positioned(
//           right: 4.0,
//           bottom: -4.0,
//           child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
//         ),
//       ],
//     );
//   }
// }


class LayoutDemo extends StatefulWidget {
  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
 AlignmentGeometry _alignment = Alignment.topRight;


    void _chageAlignment() {
      setState(() {
        _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
      });
    }
   
     @override
     Widget build(BuildContext context) {
       return Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           Container(
             height: 120.0,
             width: 120.0,
             color: Colors.blue[50],
             child: AnimatedAlign(
               alignment: _alignment,
               curve: Curves.ease,
               duration: Duration(seconds: 3),
               child: FlutterLogo(
                 size: 60,
               ),
             ),
           ),
           FlatButton(
             onPressed: (){
               _chageAlignment();
             },
             child: Text('点击我'),
           )
         ],

       );
     }

  }