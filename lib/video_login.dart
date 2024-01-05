import 'package:flutter/material.dart';
import 'package:meeting_app/conference_screen.dart';

class LoginVideo extends StatefulWidget {
  const LoginVideo({super.key});

  @override
  State<LoginVideo> createState() => _LoginVideoState();
}

class _LoginVideoState extends State<LoginVideo> {
  final conferenceId = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    conferenceId.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column (
                children: [
                  const Text(
                    'Meeting App',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                   SizedBox(
                    height: 70,
                    width: 150,
                    child: TextField(
                      controller: conferenceId,
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => VideoConferencePage(
                              conferenceID: conferenceId.text ),
                              ),
                              );
                      },
                      child: const Text(
                        'Start/Join',
                        style: TextStyle(fontSize: 20),
                      ), 
                      ),
                  )
                ]), ),
          ),
        ) ,));
  }
}