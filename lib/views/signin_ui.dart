import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/signup_ui.dart';

class SigninUi extends StatefulWidget {
  const SigninUi({super.key});

  @override
  State<SigninUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<SigninUi> {
  // แก้ไข Error โดยกำหนดค่าเริ่มต้นเป็น true เสมอ
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6), // พื้นหลังสีเทาอ่อนตามรูป
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. ปุ่ม Back (หัวลูกศรสีดำ)
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.black, size: 24),
                ),

                // 2. รูปภาพประกอบ (Illustration)
                Center(
                  child: Image.asset(
                    'assets/images/logo.png', // มั่นใจว่า path รูปภาพถูกต้อง
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 20),

                // 3. Welcome Text
                const Text(
                  'Welcome Back,',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900, // หนาพิเศษตามรูป
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Make it work, make it right, make it fast.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 25),

                // 4. E-Mail Field
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline_outlined,
                        color: Colors.grey),
                    hintText: 'E-Mail',
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // 5. Password Field (ใส่ไอคอนลายนิ้วมือ)
                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint,
                        color: Colors.grey), // ลายนิ้วมือ
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),

                // 6. Forget Password (ตัวอักษรสีฟ้า)
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xFF2196F3), // สีฟ้าตามรูป
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // 7. LOGIN Button (ปุ่มสีดำสนิท)
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF272727), // สีดำ
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // 8. OR text
                const Center(
                  child: Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),

                const SizedBox(height: 15),

                // 9. Google Sign-In (ปุ่มขอบเส้น)
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
                      height: 24,
                    ),
                    label: const Text(
                      'Sign-In with Google',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
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

                // 10. Footer Signup
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account? "),
                      GestureDetector(
                        onTap: () {
                          // ใช้ Navigator.push เพื่อเปลี่ยนหน้าไปยัง SignupUi
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupUi(),
                            ),
                          );
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                            color: Color(0xFF2196F3), // สีฟ้า
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
}
