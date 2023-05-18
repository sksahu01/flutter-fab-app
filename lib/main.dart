import 'package:flutter/material.dart';
import 'package:makers_app/src/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makers app',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  ProfilePage( ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
     
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       appBar: AppBar(
        
//         title: Text(widget.title),
//       ),
//       body: 
//           child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               color: Colors.grey[200],
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Name:',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('John Doe'),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Contact Details:',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Email: john.doe@example.com'),
//                   Text('Phone: (123) 456-7890'),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Subscription Details:',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Premium User'),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Current Projects:',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Project A'),
//                   Text('Project B'),
//                   Text('Project C'),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Certificates:',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Certificate A'),
//                   Text('Certificate B'),
//                   Text('Certificate C'),
//                 ],
//               ),
//             ),
//           ],
//         ),
      
//       Center(
//          child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
