import 'package:flutter/material.dart';
import 'package:mobile/components/my_button.dart';
import 'package:mobile/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            // message, app slogan
            Text(
              "Let's create and account for you",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),

            // email textfield
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            const SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),

            // sign in button
            const SizedBox(
              height: 10,
            ),

            // confirm password textfield
            MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: 'Sign In',
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),

            // already have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
