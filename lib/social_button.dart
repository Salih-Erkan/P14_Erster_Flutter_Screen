import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData? icon;
  final String? iconAsset;
  final String text;
  final bool outlined;

  const SocialButton({
    super.key,
    this.icon,
    this.iconAsset,
    required this.text,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = OutlinedButton.styleFrom(
      backgroundColor: outlined ? Colors.transparent : Colors.white,
      foregroundColor: outlined ? Colors.white : const Color(0xFF2BA78B),
      side: outlined ? const BorderSide(color: Colors.white) : BorderSide.none,
      padding: const EdgeInsets.symmetric(vertical: 16),
    );

    if (icon == null && iconAsset == null) {
      return SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
          child: Text(text),
          style: style,
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon:
            iconAsset != null
                ? Image.asset(iconAsset!, height: 20)
                : Icon(icon),
        label: Text(text),
        style: style,
      ),
    );
  }
}
