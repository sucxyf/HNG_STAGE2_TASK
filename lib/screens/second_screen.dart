import 'package:flutter/material.dart';
import 'package:stage2_test2/models/model.dart';
import 'package:stage2_test2/widgets/my_textfield.dart';

class SecondScreen extends StatefulWidget {
  final CVDetails cvDetails;

  SecondScreen({required this.cvDetails});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController personalBioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.cvDetails.fullName;
    usernameController.text = widget.cvDetails.username;
    githubHandleController.text = widget.cvDetails.githubHandle;
    personalBioController.text = widget.cvDetails.personalBio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit CV Details'),
          centerTitle: true,
        ),
        body: ListView(children: [
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextField(
                      controller: fullNameController,
                      labelText: 'Full Name',
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextField(
                      controller: usernameController,
                      labelText: 'User Name',
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextField(
                      controller: githubHandleController,
                      labelText: 'GitHub Handle',
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextField(
                      controller: personalBioController,
                      labelText: 'Personal Bio',
                      maxLines: 6,
                    ),
                    SizedBox(height: 60.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          final updatedDetails = {
                            'fullName': fullNameController.text,
                            'username': usernameController.text,
                            'githubHandle': githubHandleController.text,
                            'personalBio': personalBioController.text,
                          };
                          Navigator.pop(context, updatedDetails);
                        },
                        child: Text('Save'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF048BC2),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ]))
        ]));
  }
}
