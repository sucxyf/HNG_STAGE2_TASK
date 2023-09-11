import 'package:flutter/material.dart';
import 'package:stage2_test2/widgets/cvDetails_container.dart';
import 'package:stage2_test2/widgets/cvDetails_label.dart';
import 'package:stage2_test2/screens/second_screen.dart';
import 'package:stage2_test2/models/model.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  CVDetails cvDetails = CVDetails(
    fullName: "Success Felix-Imhanlenjaye",
    username: "Success Felix-Imhanlenjaye",
    githubHandle: "@sucyfelix",
    personalBio:
        'Emerging Flutter developer with a keen interest in mobile application development. Dedicated and quick learner, focused on mastering Flutter to provide innovative solutions.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My CV'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                cvDetailsLabel(label: 'Full Name'),
                SizedBox(
                  height: 5,
                ),
                cvDetailsContainer(
                  text: cvDetails.fullName,
                  height: 50,
                ),
                SizedBox(height: 30.0),
                cvDetailsLabel(label: 'Slack Username'),
                SizedBox(
                  height: 5,
                ),
                cvDetailsContainer(
                  text: cvDetails.username,
                  height: 50,
                ),
                SizedBox(height: 30.0),
                cvDetailsLabel(label: 'GitHub Handle'),
                SizedBox(
                  height: 5,
                ),
                cvDetailsContainer(
                  text: cvDetails.githubHandle,
                  height: 50,
                ),
                SizedBox(height: 30.0),
                cvDetailsLabel(label: 'Personal Bio'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 145,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      color: Color(0xFFEDF6F9),
                      borderRadius: BorderRadius.circular(12)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'Emerging Flutter developer with a keen interest in mobile application development. Dedicated and quick learner, focused on mastering Flutter to provide innovative solutions.',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      final updatedDetails = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(cvDetails: cvDetails),
                        ),
                      );

                      if (updatedDetails != null) {
                        setState(() {
                          cvDetails.update(updatedDetails);
                        });
                      }
                    },
                    child: Text('Edit Details'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF048BC2),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
