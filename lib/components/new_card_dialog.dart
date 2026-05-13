import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../graphql/schema.graphql.dart';
import '../graphql/mutations/create_card.graphql.dart';
import '../graphql_client.dart';
import 'form_container.dart';
import 'snackbar_alert.dart';
import 'text_input_field.dart';

Future<dynamic> showNewCardDialog(BuildContext context, {required listId}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(child: _NewCardForm(listId: listId));
    },
  );
}

class _NewCardForm extends StatefulWidget {
  const _NewCardForm({required this.listId});

  final String listId;

  @override
  _NewCardFormState createState() => _NewCardFormState();
}

class _NewCardFormState extends State<_NewCardForm> {
  final _formNewCard = GlobalKey<FormState>();

  String _content = '';
  String? _errorContent;

  void _attemptToCreateCard() async {
    setState(() {
      _errorContent = null;
    });

    if (_formNewCard.currentState?.validate() == true) {
      _formNewCard.currentState?.save();
      final graphQLClient = context.graphQLClient.value;
      final result = await graphQLClient.mutate$CreateCard(
        Options$Mutation$CreateCard(
          variables: Variables$Mutation$CreateCard(
            params: Input$CardParams(listId: widget.listId, content: _content),
          ),
        ),
      );

      if (!mounted) {
        return;
      }

      final errors = result.exception?.graphqlErrors.first;

      if (result.parsedData?.createCard != null) {
        showSnackBarAlert(context, 'Card created successfully');

        context.pop();
      } else {
        showSnackBarAlert(context, errors?.message ?? 'Failed to create card');

        setState(() {
          _errorContent = errors?.extensions?['params']['content']?['message'];
        });
      }
    } else {
      showSnackBarAlert(context, 'Failed to create card');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      formKey: _formNewCard,
      width: 480,
      padding: EdgeInsets.all(16),
      onSubmit: _attemptToCreateCard,
      fields: [
        Text('New card', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        TextInputField(
          labelText: 'Content',
          errorText: _errorContent,
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
