import 'package:flutter/material.dart';

// class DrawerDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             accountName: Text('wanghao',style: TextStyle(fontWeight: FontWeight.bold)),
//             accountEmail: Text('wangho@nigaho.net'),
//             currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg')),
//             decoration: BoxDecoration(
//               color: Colors.yellow[400],
//               image: DecorationImage(
//                 image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               'messages',
//               textAlign: TextAlign.right,
//             ),
//             leading: Icon(Icons.message,color: Colors.black12,size: 22.0),
//             onTap: () => Navigator.pop(context),
//           ),
//           ListTile(
//             title: Text(
//               'mango',
//               textAlign: TextAlign.right,
//             ),
//             trailing: Icon(Icons.child_friendly,color: Colors.black12,size: 22.0),
//             onTap: () => Navigator.pop(context),
//           ),
//           ListTile(
//             title: Text(
//               'haha',
//               textAlign: TextAlign.right,
//             ),
//             trailing: Icon(Icons.cloud_circle,color: Colors.black12,size: 22.0),
//             onTap: () => Navigator.pop(context),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:<Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('mango'),
            accountEmail: Text('1045915663@qq.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg')),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image:DecorationImage(
                image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('mango',textAlign: TextAlign.right),
            trailing: Icon(Icons.cloud_circle,color: Colors.black12,size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('mango1',textAlign: TextAlign.right),
            trailing: Icon(Icons.chrome_reader_mode,color: Colors.black12,size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('mango2',textAlign: TextAlign.right),
            trailing: Icon(Icons.cloud_off,color: Colors.black12,size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
      
    );
  }
}