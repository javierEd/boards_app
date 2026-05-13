import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../graphql/schema.graphql.dart';
import '../graphql/mutations/create_list.graphql.dart';
import '../graphql_client.dart';
import 'form_container.dart';
import 'snackbar_alert.dart';
import 'text_input_field.dart';

Future<dynamic> showNewListDialog(BuildContext context, {required boardId}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(child: _NewListForm(boardId: boardId));
    },
  );
}

class _NewListForm extends StatefulWidget {
  const _NewListForm({required this.boardId});

  final String boardId;

  @override
  _NewListFormState createState() => _NewListFormState();
}

class _NewListFormState extends State<_NewListForm> {
  final _formNewList = GlobalKey<FormState>();

  String _name = '';
  String? _errorName;

  void _attemptToCreateList() async {
    setState(() {
      _errorName = null;
    });

    if (_formNewList.currentState?.validate() == true) {
      _formNewList.currentState?.save();
      final graphQLClient = context.graphQLClient.value;
      final result = await graphQLClient.mutate$CreateList(
        Options$Mutation$CreateList(
          variables: Variables$Mutation$CreateList(
            params: Input$ListParams(boardId: widget.boardId, name: _name),
          ),
        ),
      );

      if (!mounted) {
        return;
      }

      final errors = result.exception?.graphqlErrors.first;

      if (result.parsedData?.createList != null) {
        showSnackBarAlert(context, 'List created successfully');

        context.pop();
      } else {
        showSnackBarAlert(context, errors?.message ?? 'Failed to create list');

        setState(() {
          _errorName = errors?.extensions?['params']['name']?['message'];
        });
      }
    } else {
      showSnackBarAlert(context, 'Failed to create list');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      formKey: _formNewList,
      padding: EdgeInsets.all(16),
      width: 480,
      onSubmit: _attemptToCreateList,
      fields: [
        Text('New list', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        TextInputField(
          labelText: 'Name',
          errorText: _errorName,
          required: true,
          maxLines: 1,
          onSaved: (value) {
            _name = value ?? '';
          },
        ),
      ],
    );
  }
}
