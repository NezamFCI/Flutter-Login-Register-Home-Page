import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/login_page.dart';

class CreateLoginPage extends StatefulWidget {
  const CreateLoginPage({Key? key}) : super(key: key);

  @override
  State<CreateLoginPage> createState() => _CreateLoginPageState();
}

class _CreateLoginPageState extends State<CreateLoginPage> {
  bool _isVisible = false;

  updateStatus() {
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
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Create a new account',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  _customTextFormField(
                      '', 'NAME', const Icon(Icons.person), TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField('nezam@gmail.com', 'EMAIL',
                      const Icon(Icons.email), TextInputType.emailAddress),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField(
                      '01835006682',
                      'PHONE',
                      const Icon(Icons.phone_android_outlined),
                      TextInputType.phone),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField('', 'PASSWORD', const Icon(Icons.lock),
                      TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField('', 'CONFIRM PASSWORD',
                      const Icon(Icons.lock), TextInputType.text),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
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
                        "Already have a account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          'Login',
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
    );
  }

// Create TextFormField Function

  _customTextFormField(var hintText, name, icon, myKeyBoardType) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        keyboardType: myKeyBoardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: icon,
          label: Text(
            '$name',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
