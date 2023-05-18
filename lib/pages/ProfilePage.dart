import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:qr_flutter/qr_flutter.dart';

// class MyQrPage extends StatefulWidget {
//   @override
//   _MyQrPageState createState() => _MyQrPageState();
// }

// class _MyQrPageState extends State<MyQrPage> {
 

  // String _data = '';

  // @override
  // void initState() {
  //   super.initState();
  //   _fetchData();
  // }

  // void _fetchData() async {
  //   final databaseReference = FirebaseDatabase.instance.reference();
  //   final dataSnapshot = await databaseReference.child('my_data').once();
  //   setState(() {
  //     _data = dataSnapshot.value ?? '';
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('My QR Page'),
  //     ),
  //     body: Center(
  //       child: QrImageView(
  //         data: _data,
  //         version: QrVersions.auto,
  //         size: 200.0,
  //       ),
  //     ),
  //   );
  // }
// }

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:qr_flutter/qr_flutter.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp( MyQrPage());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase QR Code',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyQrPage(),
//     );
//   }
// }

class MyQrPage extends StatefulWidget {
  @override
  
  _MyQrPageState createState() => _MyQrPageState();
}

class _MyQrPageState extends State<MyQrPage> {
  late DatabaseReference _databaseReference;

  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance.reference().child('users');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase QR Code'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _databaseReference.onValue,
          builder: (context, snapshot) {
            if (snapshot.hasData && !snapshot.hasError) {
              DataSnapshot data = snapshot.data!.snapshot;
              if (data.value != null) {
                String qrData = data.value.toString();
                return QrImageView(
                  data: qrData,
                  version: QrVersions.auto,
                  size: 200.0,
                );
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}