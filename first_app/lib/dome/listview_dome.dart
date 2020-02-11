import 'package:flutter/material.dart';
import '../model/post.dart';

// class ListViewDemo extends StatelessWidget{
//    // item 内容
//     Widget _listItemBuilders(BuildContext context,int index){
//       return Container(
//         color: Colors.white,
//         margin: EdgeInsets.all(8.0),
//         child: Column(
//           children: <Widget>[
//             Image.network(posts[index].imageUrl),
//             SizedBox(height: 16.0),
//             Text(
//               posts[index].title,
//               style:Theme.of(context).textTheme.title
//             ),
//             Text(
//               posts[index].author,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey[300],
//               )
//             ),
//             SizedBox(height: 16.0),
//           ],
//         ),
//       );
//     }

//     @override
//   Widget build(BuildContext context) {
//      return ListView.builder(
//        itemCount: posts.length,
//        itemBuilder: _listItemBuilders,
//      );
//   }
// }

// class ListViewDemo extends StatelessWidget {

//   Widget _listItemBuilders(BuildContext context,int index){
//     return Container(
//       margin:EdgeInsets.all(8.0),
//       child: Column(
//         children:<Widget>[
//           Image.network(posts[index].imageUrl),
//           SizedBox(height: 16.0),
//           Text(
//             posts[index].title,
//             style: Theme.of(context).textTheme.title,
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             posts[index].author,
//             style: Theme.of(context).textTheme.subhead,
//           )
//         ]
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: posts.length,
//       itemBuilder: _listItemBuilders,
//     );
//   }
// }

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilders(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilders,
    );
  }
}
