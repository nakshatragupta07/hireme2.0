// // import 'package:flutter/material.dart';
// //
// // class RegisterScreenVerified extends StatelessWidget {
// //   final _emailController = TextEditingController(text: 'JohnDoe@gmail.com');
// //   final _phoneController = TextEditingController(text: '+91 68683-38827');
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Account Verified')),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             Text('Contact Information', style: TextStyle(fontSize: 20)),
// //             SizedBox(height: 20),
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(
// //                 labelText: 'Email Address',
// //                 suffixIcon: Icon(Icons.check, color: Colors.green),
// //               ),
// //               readOnly: true,
// //             ),
// //             SizedBox(height: 20),
// //             TextField(
// //               controller: _phoneController,
// //               decoration: InputDecoration(
// //                 labelText: 'Phone Number',
// //                 suffixIcon: Icon(Icons.check, color: Colors.green),
// //               ),
// //               readOnly: true,
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// //
// //
// // import 'package:flutter/material.dart';
// //
// // class RegisterScreenVerified extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Create Account'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Center(
// //               child: Text(
// //                 'Contact Information',
// //                 style: TextStyle(
// //                   fontSize: 23,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.red.shade900,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Row(
// //               children: [
// //                 Icon(Icons.check_circle, color: Colors.red),
// //                 Icon(Icons.check_circle, color: Colors.red),
// //                 Icon(Icons.radio_button_unchecked, color: Colors.grey),
// //               ],
// //             ),
// //             SizedBox(height: 20),
// //             Text(
// //               'Email Address*',
// //               style: TextStyle(
// //                 fontSize: 16,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               enabled: false,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 hintText: 'JohnDoe@gmail.com',
// //                 suffixIcon: Icon(Icons.check, color: Colors.green),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Text(
// //               'Your Email have been Verified',
// //               style: TextStyle(
// //                 color: Colors.green,
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Text(
// //               'Phone Number*',
// //               style: TextStyle(
// //                 fontSize: 16,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               enabled: false,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 hintText: '+91 68683-38827',
// //                 suffixIcon: Icon(Icons.check, color: Colors.green),
// //               ),
// //             ),
// //             Spacer(),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: () {
// //                   // Add your onPressed code here!
// //                 },
// //                 child: Text('Proceed'),
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.red,
// //                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// //                   textStyle: TextStyle(
// //                     fontSize: 16,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
//
// class RegisterScreenVerified extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'Create Account',
//             style: TextStyle(
//               fontSize: 23,
//               fontWeight: FontWeight.bold,
//               color: Colors.red.shade900,
//             ),
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'Contact Information',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Progress Indicator
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.check_circle, color: Colors.red.shade900),
//                 Icon(Icons.check_circle, color: Colors.red.shade900),
//                 Icon(Icons.radio_button_unchecked, color: Colors.grey),
//               ],
//             ),
//             SizedBox(height: 20),
//
//             Text(
//               'Email Address*',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 hintText: 'JohnDoe@gmail.com',
//                 suffixIcon: Icon(Icons.check, color: Colors.green),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Your Email have been Verified',
//               style: TextStyle(
//                 color: Colors.green,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Phone Number*',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 hintText: '+91 68683-38827',
//                 suffixIcon: Icon(Icons.check, color: Colors.green),
//               ),
//             ),
//             Spacer(),
//             ElevatedButton(
//               onPressed: (){},
//               child: Text('Proceed'),
//               style: ElevatedButton.styleFrom(
//                 alignment: Alignment.bottomRight,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                 backgroundColor: Colors.red.shade900,
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }













import 'package:flutter/material.dart';

class RegisterScreenVerified extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int currentStep = 2; // Assume current step is 2 for this screen

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create Account',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Contact Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            // Progress Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStep(0, currentStep),
                _buildStep(1, currentStep),
                _buildStep(2, currentStep),
                _buildStep(3, currentStep),
              ],
            ),
            SizedBox(height: 20),

            Text(
              'Email Address*',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'JohnDoe@gmail.com',
                suffixIcon: Icon(Icons.check, color: Colors.green),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your Email have been Verified',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Phone Number*',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: '+91 68683-38827',
                suffixIcon: Icon(Icons.check, color: Colors.green),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: (){},
              child: Text('Proceed'),
              style: ElevatedButton.styleFrom(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                backgroundColor: Colors.red.shade900,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(int index, int currentStep) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index <= currentStep ? Colors.red.shade900 : Colors.grey,
            border: Border.all(
              color: index <= currentStep ? Colors.red.shade900 : Colors.grey,
            ),
          ),
          child: Center(
            child: index <= currentStep
                ? Icon(Icons.check, color: Colors.white)
                : null,
          ),
        ),
        if (index < currentStep)
          Container(
            width: 40,
            height: 4,
            color: Colors.red.shade900,
          ),
      ],
    );
  }
}
