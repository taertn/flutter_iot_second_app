import 'package:flutter/material.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  bool _isObscure = true; // สำหรับซ่อน/แสดงรหัสผ่าน

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // พื้นหลังสีเทาอ่อนตามภาพ
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. ปุ่มย้อนกลับ
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.black, size: 24),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),

                // 2. รูปภาพประกอบด้านบน
                Center(
                  child: Image.asset(
                    'assets/images/logo.png', // เปลี่ยนเป็น path รูปของคุณ
                    height: 180,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 10),

                // 3. หัวข้อ Get On Board!
                const Text(
                  'Get On Board!',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Create your profile to start your Journey.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 20),

                // 4. Form Fields
                // Full Name
                _buildTextField(
                  hint: 'Full Name',
                  icon: Icons.person_outline_outlined,
                ),
                const SizedBox(height: 12),

                // E-Mail
                _buildTextField(
                  hint: 'E-Mail',
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 12),

                // Phone No
                _buildTextField(
                  hint: 'Phone No',
                  icon: Icons.numbers, // หรือใช้ Icons.tag ตามภาพ
                ),
                const SizedBox(height: 12),

                // Password
                TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.fingerprint, color: Colors.grey),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // 5. ปุ่ม SIGNUP (สีดำ)
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF272727),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // 6. ส่วน OR
                const Center(
                  child: Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),

                const SizedBox(height: 15),

                // 7. ปุ่ม Sign-In with Google
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
                      height: 20,
                    ),
                    label: const Text(
                      'SIGN-IN WITH GOOGLE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 8. ส่วนท้าย Already have an Account? LOGIN
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // กลับไปหน้า Login
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: 'Already have an Account? ',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'LOGIN',
                            style: TextStyle(
                              color: Color(0xFF2196F3),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper Widget สำหรับสร้าง TextField ที่หน้าตาเหมือนกัน
  Widget _buildTextField({required String hint, required IconData icon}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
