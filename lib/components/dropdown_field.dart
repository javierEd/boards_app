import 'package:flutter/material.dart';

class DropdownField<T> extends StatelessWidget {
  const DropdownField({
    super.key,
    this.labelText,
    this.errorText,
    required this.items,
    this.initialValue,
    this.required = false,
    required this.onChanged,
    this.validator,
  });

  final String? labelText;
  final String? errorText;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final bool required;
  final Function(T?) onChanged;
  final String? Function(T?)? validator;

  String? _validator(BuildContext context, T? value) {
    if (required && value == null) {
      return 'Can\'t be blank';
    }

    return validator?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        errorText: errorText,
      ),
      items: items,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: (value) => _validator(context, value),
    );
  }
}
