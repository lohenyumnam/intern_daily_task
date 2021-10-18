import 'dart:developer';

import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  bool value = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final fullname = TextEditingController();
  final phonenumber = TextEditingController();
  final email = TextEditingController();
  final guestname = TextEditingController();
  String dropdownValue = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Information'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.purple,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextFormField(
                        controller: fullname,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          hintText: 'Enter your full name',
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                '+91',
                                '+21',
                                '+1',
                                '+41'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phonenumber,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Phone number';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Phone number',
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email address';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'email address',
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                  if (value) {
                                    log("checked");
                                  } else {
                                    log("unchecked");
                                  }
                                });
                              }),
                          const Text("Guest name is same with the contact")
                        ],
                      ),
                      TextFormField(
                        controller: guestname,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter guest name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Guest name',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                            style: const ButtonStyle(),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                log(fullname.text);
                                log(phonenumber.text);
                                log(guestname.text);
                                log(email.text);
                                log(dropdownValue);
                              }
                            },
                            child: const Text('Submit')),
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
}
