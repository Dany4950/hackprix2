import 'package:flutter/material.dart';
import 'package:hackathon2/admin/homepage_admin.dart';
import 'package:hackathon2/worker/home_worker.dart';

class SignupAdmin extends StatefulWidget {
  const SignupAdmin({Key? key}) : super(key: key);

  @override
  State<SignupAdmin> createState() => _SignupAdminState();
}

class _SignupAdminState extends State<SignupAdmin> {
  final _nameController = TextEditingController();

  final _phoneController = TextEditingController();
  final _skillController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_checkButton);

    _phoneController.addListener(_checkButton);
  }

  @override
  void dispose() {
    _nameController.dispose();

    _phoneController.dispose();
    _skillController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _checkButton() {
    setState(() {
      _isButtonEnabled =
          _nameController.text.isNotEmpty && _phoneController.text.isNotEmpty;
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

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Homepage_admin()));
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
                label: 'Phone Number',
                controller: _phoneController,
                icon: Icons.phone,
                inputType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              _buildTextField(
                label: 'Skill Required',
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
