import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _phone = '';
  String _gender = '';
  String _country = '';
  String _state = '';
  String _city = '';

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  // Perform additional phone number validation if needed
                  return null;
                },
                onSaved: (value) {
                  _phone = value!;
                },
              ),
             
              TextFormField(
                decoration: InputDecoration(labelText: 'Country'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your country';
                  }
                  return null;
                },
                onSaved: (value) {
                  _country = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'State'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your state';
                  }
                  return null;
                },
                onSaved: (value) {
                  _state = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'City'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                onSaved: (value) {
                  _city = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Do something with the form data
                    // For example, send the data to an API or save it locally
                    print('Name: $_name');
                    print('Email: $_email');
                    print('Phone: $_phone');
                    print('Gender: $_gender');
                    print('Country: $_country');
                    print('State: $_state');
                    print('City: $_city');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

