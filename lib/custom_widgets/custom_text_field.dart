import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool readOnly;
  final List<TextInputFormatter>? textInputFormatters;


  const CustomTextField({
    Key? key,
    required this.controller,
     required this.hintText,
     required this.prefixIcon,
      this.keyboardType = TextInputType.text,
     this.obscureText = false,
      this.validator,
     this.readOnly = false,
     this.textInputFormatters,
    }): super(key: key);


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  late bool _isObscure;

  @override
  void initState() {
    _isObscure = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return TextFormField(
      inputFormatters: widget.textInputFormatters ?? [],
       readOnly: widget.readOnly,
        cursorColor: Colors.black,
         controller: widget.controller,
         keyboardType: widget.keyboardType,
          obscureText: _isObscure,
         validator: widget.validator,
          style: const TextStyle(
            color: Colors.black,
          ),
         decoration: InputDecoration(
             filled: true,
             fillColor: Colors.white60,
            counterText: "",
           prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12,right: 8),
            child: Container(
               width: 1.0,
               height: 1.0,
               decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 color: Colors.green.shade100,
               ),
              child: Center(
                child: Icon(
                 widget.prefixIcon,
                  size: 15,
                color: Colors.black,
                ),
              ),
            ),
           ),
           contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),

           border: OutlineInputBorder(
           borderSide: const BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10),
           ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black,width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
           focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black,width: 1.0),
          borderRadius: BorderRadius.circular(10),
           ),
           errorBorder:  OutlineInputBorder(
             borderSide: const BorderSide(color: Colors.grey,width: 1.0),
             borderRadius: BorderRadius.circular(10),
           ),
            hintText: widget.hintText,
             suffixIcon: widget.obscureText
               ? IconButton(
                 icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                   color: Colors.grey,
                 ),
               onPressed: (){
                   setState(() {
                       _isObscure = !_isObscure;
                   });
               },
             ):null,
             labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
           fontWeight: FontWeight.w600,
           color: Colors.black38,
           letterSpacing: 1.0,
         ),



         ),

    );
  }
}
