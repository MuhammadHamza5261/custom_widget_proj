import 'package:custom_widgets_proj/custom_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {


  // controllers
  final _email = TextEditingController();
  final _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: _email,
                hintText: 'Email',
                prefixIcon: Icons.email_outlined,
                validator: (String? text){
                  if(text!.isEmpty){
                    return 'Enter Email';
                  }
                  else if(!text.contains('@') || !text.contains('.com'))
                  {
                    return 'Enter a valid email' ;
                  }
                  return null;
                }
            ),

          ],
        ),
      ),
    );
  }
}
