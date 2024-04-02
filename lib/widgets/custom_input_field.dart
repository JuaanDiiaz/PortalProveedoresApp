import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  final String formproperty;
  final Map<String,String> formData;
  
  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, this.obscureText, required this.formproperty, required this.formData,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: 'Nombre',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType??TextInputType.text,
      obscureText: obscureText??false,
      onChanged: (value) {
        formData[formproperty] = value;
      },
      validator: (value) {
        if (value==null) {
          return '$formproperty es obligatorio';
        }
        return value.length < 3 ? '$formproperty debe tener al menos 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        //counterText: 'Letras ',
        //prefixIcon: const Icon(Icons.person),
        icon: icon != null ? Icon(icon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
    );
  }
}