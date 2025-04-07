class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BA78B),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Hi, Welcome Back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                const InputField(label: 'Email', hintText: 'example@gmail.com'),
                const SizedBox(height: 16),
                const InputField(
                  label: 'Password',
                  hintText: 'Enter Your Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (_) {},
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF2BA78B),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('Einloggen'),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(child: Divider(color: Colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or With',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 24),
                const SocialButton(
                  icon: Icons.apple,
                  text: 'Sign in with Apple',
                ),
                const SizedBox(height: 24),
                const SocialButton(
                  icon: FontAwesomeIcons.google,
                  text: 'Login with Google',
                  outlined: true,
                ),
                const SizedBox(height: 40),
                RichText(
                  text: const TextSpan(
                    text: "Don’t have an account ? ",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
