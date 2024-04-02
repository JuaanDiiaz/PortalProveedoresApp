import 'package:flutter/material.dart';
import 'package:portal_proveedores/providers/proveedores_provider.dart';
import 'package:portal_proveedores/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: _LoginForm(),
      )
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String,String> formData = {
      'nombre': '1',
      'password': '1',
    };

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('Login', style: TextStyle(fontSize: 20)),
            CustomInputField(
              formData: formData,
              formproperty: 'nombre',
              hintText: 'Nombre',
              labelText: 'Nombre',
              helperText: 'Nombre del usuario',
              icon: Icons.person,
            ),
            CustomInputField(
              formData: formData,
              formproperty: 'password',
              hintText: 'Contraseña',
              labelText: 'Contraseña',
              helperText: 'Contraseña del usuario',
              icon: Icons.lock,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                FocusScope.of(context).requestFocus(FocusNode());
                if(!formKey.currentState!.validate()) return;
                if(await Provider.of<ProveedoresProvider>(context, listen: false).logIn(formData['nombre']!, formData['password']!)) {
                  Navigator.popAndPushNamed(context, 'home');
                }
              },
              child: const Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}