import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.mail,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            'Password',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class aa {
//Create TextFormField Method
// This is Name Text Field
  _nameTextField(var _name) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            '$_name',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  _emailTextField(var _email) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            '$_email',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  _phoneTextField(var _phone) {
    return Container(
      child: TextFormField(
        // obscureText: true,
        // style: TextStyle(
        //   color: Theme.of(context).primaryColor,
        // ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.phone_android,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            '$_phone',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  _passwordTextField(var _password) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            '$_password',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  _confirmPasswordTextField(var _cpassword) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
            //size: 25,
          ),
          label: Text(
            '$_cpassword',
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
