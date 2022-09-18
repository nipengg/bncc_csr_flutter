import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget usernameTextField() {
      return const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          filled: true,
          fillColor: Color.fromRGBO(240, 240, 240, 1),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          hintText: 'Usename',
        ),
      );
    }

    Widget passwordTextField() {
      return const TextField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          filled: true,
          fillColor: Color.fromRGBO(240, 240, 240, 1),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          hintText: 'Password',
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/instagram_logo.svg'),
                    const SizedBox(height: 20),
                    usernameTextField(),
                    const SizedBox(height: 15),
                    passwordTextField(),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Error',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password'))
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          minimumSize:
                              MaterialStatePropertyAll(Size.fromHeight(50))),
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            height: 0.5,
                            color: Color.fromRGBO(60, 60, 60, 0.3),
                          ),
                        ),
                        SizedBox(width: 40),
                        Text('Or'),
                        SizedBox(width: 40),
                        Expanded(
                          child: Divider(
                            height: 0.5,
                            color: Color.fromRGBO(60, 60, 60, 0.3),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/fb_logo.svg'),
                          const SizedBox(width: 10,),
                          const Text('Sign in with Facebook', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(onPressed: () {}, child: const Text('Sign Up')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
