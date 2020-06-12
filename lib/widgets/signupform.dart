import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  double progress = 0;
  bool _dataEntered = false;

  void _submit() {
    Navigator.of(context).pushReplacementNamed('/attendance');
  }

  void updateDataEntered() {
    if (_firstNameTextController.text != "") {
      print('1/3');
      progress = 0.33;
      if (_lastNameTextController.text != "") {
        print('2/3');
        progress = 0.66;
        if (_usernameTextController.text != "") {
          setState(() {
            print('3/3');
            _dataEntered = true;
            progress = 1;
          });
          print('true $_dataEntered');
        }
      }
    }
    _dataEntered = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: updateDataEntered,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: progress),
          SizedBox(height: 20),
          Text('Sign Up', style: Theme.of(context).textTheme.headline4),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _firstNameTextController,
              decoration: InputDecoration(hintText: 'First name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: InputDecoration(hintText: 'Last name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _usernameTextController,
              decoration: InputDecoration(hintText: 'Username'),
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                onPressed: _submit,
                disabledColor: Color(0xffE6E6FD),
                disabledTextColor: Colors.grey,
                textColor: Colors.white,
                color: Color(0xff5944DF),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}
