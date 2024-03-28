import 'package:brgy_abella/utilities/constant.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onTap,
    required this.label,
    this.isFluid = true,
    super.key,
  });

  final VoidCallback onTap;
  final String label;
  final bool isFluid;

  @override
  Widget build(BuildContext context) => FilledButton(
    style: ElevatedButton.styleFrom(
      minimumSize: isFluid ? const Size(double.infinity, 50.0) : null,
      backgroundColor: darkGreen,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
    ),
    onPressed: onTap,
    child: Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
  );
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.onTap,
    required this.label,
    this.isFluid = true,
    super.key,
  });

  final VoidCallback onTap;
  final String label;
  final bool isFluid;

  @override
  Widget build(BuildContext context) => OutlinedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: isFluid ? const Size(double.infinity, 50.0) : null,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
    ),
    onPressed: onTap,
    child: Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
  );
}