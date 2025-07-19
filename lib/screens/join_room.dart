import 'package:flutter/material.dart';
import 'package:typeracer/widgets/CustomButton.dart';
import 'package:typeracer/widgets/custom_text_field.dart';

class joinRoomScreen extends StatefulWidget {
  const joinRoomScreen({super.key});
  
  

  @override
  State<joinRoomScreen> createState() => _joinRoomScreenState();
}

class _joinRoomScreenState extends State<joinRoomScreen> {
  final _nameController = TextEditingController();
  final _gameIdController = TextEditingController();

    @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20), // <-- fixed comma
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Join Room',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: size.height * 0.08),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'Enter your nickname',
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _gameIdController,
                  hintText: 'Enter your GameId',
                ),
                const SizedBox(height: 30),
                Custombutton(
                  text: 'Join',
                  onTap: () {
                    // Handle create action here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}