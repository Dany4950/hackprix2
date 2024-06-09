// import 'package:flutter/material.dart';
// import 'package:hackathon2/admin/homepage_admin.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[100],
//       body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 80,
//                 ),
//                 Text(
//                   'Create Your Account',
//                   style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 50),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Full Name',
//                     prefixIcon: Icon(Icons.person),
//                   ),
//                 ),
//                 SizedBox(height: 19),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Aadhar Card Number',
//                     prefixIcon: Icon(Icons.credit_card),
//                   ),
//                 ),
//                 SizedBox(height: 19),
//                 TextField(
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Phone Number',
//                     prefixIcon: Icon(Icons.phone),
//                   ),
//                 ),
//                 SizedBox(height: 19),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Skill',
//                     prefixIcon: Icon(Icons.work),
//                   ),
//                 ),
//                 SizedBox(height: 19),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     prefixIcon: Icon(Icons.lock),
//                   ),
//                 ),
//                 SizedBox(height: 49),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 18),
//                       child: Container(
//                         height: 140,
//                         width: 140,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [Colors.deepPurple, Colors.purpleAccent],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.7),
//                               spreadRadius: 2,
//                               blurRadius: 10,
//                               offset:
//                                   Offset(0, 4), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             Homepage_worker()));
//                               },

//                               // here it is the break for two pages navigation

//                               icon: Icon(
//                                 Icons.construction,
//                                 size: 50,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(
//                                 height:
//                                     8), // Add some space between the icon and text
//                             Text(
//                               "Click to Work",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 letterSpacing: 1.0,
//                               ),
//                               textAlign:
//                                   TextAlign.center, // Center align the text
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 50),
//                       child: Container(
//                         height: 140,
//                         width: 140,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [Colors.deepPurple, Colors.purpleAccent],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.7),
//                               spreadRadius: 2,
//                               blurRadius: 10,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             Homepage_admin()));
//                               },
//                               icon: Icon(
//                                 Icons.monetization_on,
//                                 size: 50,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(
//                                 height:
//                                     8), // Add some space between the icon and text
//                             Text(
//                               "Click to Hire",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 letterSpacing: 1.0,
//                               ),
//                               textAlign:
//                                   TextAlign.center, // Center align the text
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 ElevatedButton.icon(
//                   icon: Icon(Icons.navigate_next_rounded),
//                   label: Text("Sign Up"),
//                   style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(25),
//                               bottomRight: Radius.circular(20),
//                               topRight: Radius.circular(20)))),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Homepage_worker()));
//                   },
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hackathon2/admin/homepage_admin.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[100],
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 80),
//               Center(
//                 child: Text(
//                   'Create Your Account',
//                   style: TextStyle(
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.deepPurple[900]),
//                 ),
//               ),
//               SizedBox(height: 50),
//               _buildTextField(
//                 label: 'Full Name',
//                 icon: Icons.person,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Aadhar Card Number',
//                 icon: Icons.credit_card,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Phone Number',
//                 icon: Icons.phone,
//                 inputType: TextInputType.phone,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Skill',
//                 icon: Icons.work,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Password',
//                 icon: Icons.lock,
//                 isPassword: true,
//               ),
//               SizedBox(height: 50),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildOptionTile(
//                     title: "Click to Work",
//                     icon: Icons.construction,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Homepage_worker()),
//                       );
//                     },
//                   ),
//                   _buildOptionTile(
//                     title: "Click to Hire",
//                     icon: Icons.monetization_on,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Homepage_admin()),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//               SizedBox(height: 40),
//               // Center(
//               //   child: ElevatedButton.icon(
//               //     icon: Icon(Icons.navigate_next_rounded),
//               //     label: Text("Sign Up"),
//               //     style: ElevatedButton.styleFrom(
//               //       backgroundColor: Colors.deepPurple[100],
//               //       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               //       shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(25),
//               //       ),
//               //     ),
//               //     onPressed: () {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(
//               //             builder: (context) => Homepage_worker()),
//               //       );
//               //     },
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required IconData icon,
//     TextInputType inputType = TextInputType.text,
//     bool isPassword = false,
//   }) {
//     return TextField(
//       keyboardType: inputType,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon, color: Colors.deepPurple),
//         filled: true,
//         fillColor: Colors.white,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple, width: 2),
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionTile({
//     required String title,
//     required IconData icon,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 70,
//         width: 140,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.purple, Colors.purple.shade200],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 10,
//               offset: Offset(0, 4), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               icon,
//               size: 50,
//               color: Colors.white,
//             ),
//             SizedBox(height: 8),
//             Text(
//               title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontSize: 16,
//                 letterSpacing: 1.0,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// // }
// import 'package:flutter/material.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[100],
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 80),
//               Center(
//                 child: Text(
//                   'Create Your Account',
//                   style: TextStyle(
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.deepPurple[900]),
//                 ),
//               ),
//               SizedBox(height: 50),
//               _buildTextField(
//                 label: 'Full Name',
//                 icon: Icons.person,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Aadhar Card Number',
//                 icon: Icons.credit_card,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Phone Number',
//                 icon: Icons.phone,
//                 inputType: TextInputType.phone,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Skill',
//                 icon: Icons.work,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Password',
//                 icon: Icons.lock,
//                 isPassword: true,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Center(
//                 child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Homepage_worker()));
//                     },
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.bold),
//                       )),
//                       height: 50,
//                       width: 100,
//                       // color: Colors.grey[100],
//                     )),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Reusable method for building text fields
//   Widget _buildTextField({
//     required String label,
//     required IconData icon,
//     TextInputType inputType = TextInputType.text,
//     bool isPassword = false,
//   }) {
//     return TextField(
//       keyboardType: inputType,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon, color: Colors.deepPurple),
//         filled: true,
//         fillColor: Colors.white,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple, width: 2),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class Signup extends StatefulWidget {
//   const Signup({Key? key}) : super(key: key);

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   final _nameController = TextEditingController();
//   final _aadharController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _skillController = TextEditingController();
//   final _passwordController = TextEditingController();

//   bool _isButtonEnabled = false;

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(_checkButton);
//     _aadharController.addListener(_checkButton);
//     _phoneController.addListener(_checkButton);
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _aadharController.dispose();
//     _phoneController.dispose();
//     _skillController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _checkButton() {
//     setState(() {
//       _isButtonEnabled = _nameController.text.isNotEmpty &&
//           _aadharController.text.isNotEmpty &&
//           _phoneController.text.isNotEmpty;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[100],
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 80),
//               Center(
//                 child: Text(
//                   'Create Your Account',
//                   style: TextStyle(
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.deepPurple[900]),
//                 ),
//               ),
//               SizedBox(height: 50),
//               _buildTextField(
//                 controller: _nameController,
//                 label: 'Full Name',
//                 icon: Icons.person,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 controller: _aadharController,
//                 label: 'Aadhar Card Number',
//                 icon: Icons.credit_card,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 controller: _phoneController,
//                 label: 'Phone Number',
//                 icon: Icons.phone,
//                 inputType: TextInputType.phone,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 controller: _skillController,
//                 label: 'Skill',
//                 icon: Icons.work,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 controller: _passwordController,
//                 label: 'Password',
//                 icon: Icons.lock,
//                 isPassword: true,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: _isButtonEnabled
//                       ? () {
//                           // Perform sign up action
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Homepage_worker(),
//                             ),
//                           );
//                         }
//                       : null,
//                   child: Container(
//                     child: Center(
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     height: 50,
//                     width: 100,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Reusable method for building text fields
//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String label,
//     required IconData icon,
//     TextInputType inputType = TextInputType.text,
//     bool isPassword = false,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: inputType,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon, color: Colors.deepPurple),
//         filled: true,
//         fillColor: Colors.white,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple, width: 2),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hackathon2/worker/home_worker.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _nameController = TextEditingController();
  final _aadharController = TextEditingController();
  final _phoneController = TextEditingController();
  final _skillController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_checkButton);
    _aadharController.addListener(_checkButton);
    _phoneController.addListener(_checkButton);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _aadharController.dispose();
    _phoneController.dispose();
    _skillController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _checkButton() {
    setState(() {
      _isButtonEnabled = _nameController.text.isNotEmpty &&
          _aadharController.text.isNotEmpty &&
          _phoneController.text.isNotEmpty;
    });
  }

  void _signUp() {
    if (!_isButtonEnabled) {
      // Show a snackbar indicating that all fields must be filled
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all the fields.'),
        ),
      );
      return;
    }

    // Navigate to the next page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage_worker()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Center(
                child: Text(
                  'Create Your Account',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[900],
                  ),
                ),
              ),
              SizedBox(height: 50),
              _buildTextField(
                label: 'Full Name',
                controller: _nameController,
                icon: Icons.person,
              ),
              SizedBox(height: 20),
              _buildTextField(
                label: 'Aadhar Card Number',
                controller: _aadharController,
                icon: Icons.credit_card,
              ),
              SizedBox(height: 20),
              _buildTextField(
                label: 'Phone Number',
                controller: _phoneController,
                icon: Icons.phone,
                inputType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              _buildTextField(
                label: 'Skill',
                controller: _skillController,
                icon: Icons.work,
              ),
              SizedBox(height: 20),
              _buildTextField(
                label: 'Password',
                controller: _passwordController,
                icon: Icons.lock,
                isPassword: true,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _signUp,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: 50,
                    width: 100,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Reusable method for building text fields
  Widget _buildTextField({
    required String label,
    required IconData icon,
    TextEditingController? controller,
    TextInputType inputType = TextInputType.text,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepPurple, width: 2),
        ),
      ),
    );
  }
}
