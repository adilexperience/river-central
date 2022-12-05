import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:river_central/controllers/app_colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 40,
                  left: 40,
                  top: 0,
                  bottom: 60,
                  child: Image.asset(
                    'assets/images/login_background_image.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text(
                      'Welcome back',
                      style: GoogleFonts.raleway(
                        fontSize: 54.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 0.9,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 1.5,
                            color: Color.fromARGB(255, 65, 65, 65),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.raleway(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Image.asset("assets/icons/message.png"),
                        const SizedBox(width: 12.0),
                        Text(
                          'Email',
                          style: GoogleFonts.raleway(
                            color: Color(0XFF868686),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    TextField(),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.black45,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black45),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Text(
                          'Show',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Forgot Passcode?',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 60.0,
                      width: 27.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Create account',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
