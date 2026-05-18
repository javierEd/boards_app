import 'package:flutter/material.dart';

import '../graphql/fragments/card_fragment.graphql.dart';
import 'form_container.dart';
import 'text_input_field.dart';

class CardForm extends StatefulWidget {
  const CardForm({super.key, required this.formKey, this.initialValues, required this.onSubmit});

  final GlobalKey<FormState> formKey;
  final Fragment$CardFragment? initialValues;
  final Future<Map<String, dynamic>?> Function(String content) onSubmit;

  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  String _content = '';
  String? _errorContent;

  @override
  void initState() {
    super.initState();
    if (widget.initialValues != null) {
      _content = widget.initialValues!.content;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      formKey: widget.formKey,
      onSubmit: () async {
        if (widget.formKey.currentState?.validate() == true) {
          widget.formKey.currentState?.save();
          final errors = await widget.onSubmit(_content);

          if (errors != null) {
            setState(() {
              _errorContent = errors['content']?['message'];
            });
          }
        }
      },
      fields: [
        TextInputField(
          labelText: 'Content',
          errorText: _errorContent,
          initialValue: _content,
          required: true,
          maxLines: 4,
          onSaved: (value) {
            _content = value ?? '';
          },
        ),
      ],
    );
  }
}
