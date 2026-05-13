import 'package:flutter/material.dart';

import 'text_input_field.dart';

class DateField extends StatefulWidget {
  const DateField({super.key, this.labelText, this.errorText, this.required = false, required this.onChanged});

  final String? labelText;
  final String? errorText;
  final bool required;
  final void Function(DateTime?) onChanged;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      controller: _controller,
      labelText: widget.labelText,
      errorText: widget.errorText,
      required: widget.required,
      suffixIcon: Icon(Icons.calendar_today_rounded),
      readOnly: true,
      onTap: () async {
        final value = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        _controller.text = value?.toLocal().toString().split(' ')[0] ?? '';
        widget.onChanged(value);
      },
    );
  }
}
