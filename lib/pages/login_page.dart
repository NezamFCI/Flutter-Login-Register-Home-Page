import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/create_login_page.dart';
import 'package:flutter_ui/pages/listViewPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email, password;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void checkValidation(var checkEmail, var checkPassword) {
    String a = 'nezam@gmail.com';
    String b = 'nezam123';
    if (_formkey.currentState!.validate()) {
      if (checkEmail == a) {
        if (checkPassword == b) {
          toastMessage('Login Successful');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListViewPage()),
          );
        } else {
          toastMessage('Wrong Password');
        }
      } else {
        //1st if-else
        toastMessage('Wrong Email Address');
      }
    }
  }

  //Toast Function
  void toastMessage(var toastText) {
    Fluttertoast.showToast(
        msg: toastText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        backgroundColor: Colors.red[200],
        fontSize: 16.0);
  }

  //Password show & hide
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[50],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/person_icon2.png',
                      height: 110,
                      width: 110,
                      color: Colors.black12,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // const Icon(
                    //   Icons.person_pin_circle_rounded,
                    //   color: Colors.grey,
                    //   size: 100,
                    // ),
                    const Text(
                      'Wellcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        //color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'sign in to continue',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter a Email Address';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please a Valid Email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.grey,
                            //size: 25,
                          ),
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'nezamcst13@gmail.com',
                          hintStyle: const TextStyle(
                              fontSize: 17, color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _textFormField(
                      'PASSWORD',
                    ),
                    //const TextFormFieldWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          checkValidation(
                              emailController.text, passwordController.text);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have account?",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateLoginPage()),
                            );
                          },
                          child: const Text(
                            'create a new account',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

// This is TextFormField Function
  _textFormField(var _password) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: passwordController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Enter Password';
          }
          return value.length <= 6 ? 'Password must be six characters' : null;
        },
        onSaved: (value) {
          password = value;
        },
        obscureText: _isVisible ? false : true,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
            //size: 25,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              updateStatus();
            },
            icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
          ),
          labelText: 'PASSWORD',
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
