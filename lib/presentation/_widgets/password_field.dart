import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/widgets.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.label});

  final String? label;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: inputWithLabel(
        widget.label ?? 'Пароль',
        'Введите пароль',
        obscureText: _obscureText,
        suffixIcon: IconButton(
          icon: Assets.images.eyeSlash.svg(
            colorFilter: const ColorFilter.mode(AppColors.colorFF797979, BlendMode.srcIn),
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}
