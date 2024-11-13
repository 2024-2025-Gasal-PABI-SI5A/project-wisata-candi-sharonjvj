import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //TODO: DEKLARASIKAN VARIABEL
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: PASANG APPBAR
      appBar: AppBar(
        title: const Text('Sign In'),
      ),

      //TODO: PASANG BODY
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
              //TODO: ATUR MAINAXISALIGNMENT DAN CROSSAXISALIGNMENT
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO: BUAT TEXTFORMFIELD UTK NAMA PENGGUNA
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Pengguna',
                    hintText: 'Masukkan nama pengguna',
                    border: OutlineInputBorder(),
                  ),
                ),

                //TODO: BUAT TEXTPFORMFIELD UTK KATA SANDI
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    hintText: 'Masukkan kata sandi',
                    border: const OutlineInputBorder(),
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  obscureText: _obscurePassword,
                ),
                //TODO: BUAT ELEVATED BUTTON UNTUK SIGN IN
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                ),
                //TODO: BUAT ELEVATED BUTTON UNTUK SIGN UP
                const SizedBox(
                  height: 10,
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Belum punya akun? Daftar di sini.'),
                // ),
                RichText(
                  text: TextSpan(
                    text: 'Daftar di sini.',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
