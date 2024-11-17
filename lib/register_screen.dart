// import 'package:flutter/material.dart';
//
// class RegisterScreenVerified extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int currentStep = 2; // Assume current step is 2 for this screen
//
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
//                 _buildStep(0, currentStep),
//                 _buildStep(1, currentStep),
//                 _buildStep(2, currentStep),
//                 _buildStep(3, currentStep),
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
//               onPressed: () {
//                 // Add your onPressed code here!
//               },
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
//
//   Widget _buildStep(int index, int currentStep) {
//     return Column(
//       children: [
//         Container(
//           width: 40,
//           height: 40,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: index <= currentStep ? Colors.red.shade900 : Colors.grey,
//             border: Border.all(
//               color: index <= currentStep ? Colors.red.shade900 : Colors.grey,
//             ),
//           ),
//           child: Center(
//             child: index <= currentStep
//                 ? Icon(Icons.check, color: Colors.white)
//                 : null,
//           ),
//         ),
//         if (index < currentStep)
//           Container(
//             width: 40,
//             height: 4,
//             color: Colors.red.shade900,
//           ),
//       ],
//     );
//   }
// }










import 'package:flutter/material.dart';
import 'otp_verification_screen.dart';
import 'register_screen_verified.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController(text: 'JohnDoe@gmail.com');
  final _phoneController = TextEditingController(text: '+91');

  bool _isEmailVerified = false;
  bool _verifyOTP = false;

  int currentStep = 1;

  void _verifyEmail() {
    setState(() {
      _isEmailVerified = true;
      if (_isEmailVerified) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
        );
      }
    });
  }

  void _proceed() {
    setState(() {
      _verifyOTP = true;
      if (_isEmailVerified && _phoneController.text.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreenVerified()),
        );
      }
    });
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

  @override
  Widget build(BuildContext context) {
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

            Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address*',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red.shade900),
                    ),
                    errorText: _isEmailVerified ? null : 'Email is not verified',
                    suffixIcon: _isEmailVerified
                        ? Icon(Icons.check, color: Colors.red.shade900)
                        : Icon(Icons.error_outline, color: Colors.red.shade900),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: _verifyEmail,
                child: Text('Verify Now'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number*',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.red),
                ),
                errorText: _phoneController.text.isEmpty
                    ? 'Phone Number is Required'
                    : null,
                suffixIcon: _phoneController.text.isNotEmpty
                    ? Icon(Icons.check, color: Colors.red.shade900)
                    : Icon(Icons.error_outline, color: Colors.red.shade900),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: null, // The back button is disabled
                  child: Text('Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                    minimumSize: Size(128, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _proceed,
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
          ],
        ),
      ),
    );
  }
}
