import 'package:flutter/material.dart';

import '../../utils/custom_app_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Form(
            child: Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME!",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "poppins",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Username",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.013,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(68, 75, 89, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 10.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(21, 34, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.013,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(68, 75, 89, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  
                    TextFormField(
                      // obscureText: ispress! && isPasswordVisible!,

                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isShow,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isShow = !isShow;
                              });
                            },
                            icon: isShow
                                ?const Icon(Icons.visibility_off) :const Icon(Icons.visibility)
                                ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 10.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(21, 34, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // ElevatedButton(onPressed: (){}, child: Text('Sign in'))
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromRGBO(21, 34, 102, 1),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        minimumSize: WidgetStateProperty.all(
                          Size(
                            MediaQuery.of(context).size.width * 0.4,
                            MediaQuery.of(context).size.height * 0.09,
                          ),
                        ),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.017,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 400,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "signinImage.png",
                  
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
