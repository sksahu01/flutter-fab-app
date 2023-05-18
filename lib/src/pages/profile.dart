import 'package:flutter/material.dart';
import 'badges.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromARGB(221, 203, 196, 196),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/pic.png"),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Name:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const Text(
                    'SURAJ KUMAR SAHU',
                    style: TextStyle(fontSize: 30),
                  ),
                         const SizedBox(height: 16),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: FractionallySizedBox(
                  //     heightFactor: 0.8,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: const [
                  //         BadgeWidget(
                  //           icon: Icons.code,
                  //           text: 'Gold Badge',
                  //         ),
                  //         //  SizedBox(width: 16),
                  //         //  BadgeWidget(
                  //         //    icon: Icons.data_exploration,
                  //         //    text: 'Omega Badge',
                  //         //  ),
                  //         //  SizedBox(width: 16),
                  //         BadgeWidget(
                  //           icon: Icons.verified,
                  //           text: 'Platinum Badge',
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          BadgeWidget(
                            icon: Icons.code,
                            text: 'Gold Badge',
                          ),

                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: const [
                          // BadgeWidget(
                          //        icon: Icons.star,
                          //    text: 'Gold Badge',
                          //   ),

                          // SizedBox(width: 8),
                          BadgeWidget(
                            icon: Icons.verified_sharp,
                            text: 'Platinum Badge',
                          )

                        ],
                      ),
                      Column(
                        children: const [
                          // Text(
                          //   'Skills:',
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 24),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Contact Details:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const Text(
                    'Email: lab@example.com',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'Phone: +91 1234567890',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Subscription Plan Details:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const Text(
                    'Master Maker',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Skills:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'Java',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'AI',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Hardware',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Current Projects:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'Project A',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Project B',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Project C',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Certificates:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'Certificate A',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Certificate B',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Certificate C',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
