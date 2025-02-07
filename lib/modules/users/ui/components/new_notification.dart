import 'package:flutter/material.dart';

void showNewNotificationDialog(
  BuildContext context, {
  required OnCreateNotification onCreateNotification,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) => NewNotificationDialog(
      onCreateNotification: onCreateNotification,
    ),
  );
}

typedef OnCreateNotification = Future<void> Function({
  required String title,
  required String body,
  String? url,
});

class NewNotificationDialog extends StatefulWidget {
  final OnCreateNotification onCreateNotification;

  const NewNotificationDialog({super.key, required this.onCreateNotification});

  @override
  _NewNotificationDialogState createState() => _NewNotificationDialogState();
}

class _NewNotificationDialogState extends State<NewNotificationDialog> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _body = '';
  bool _includeUrl = false;
  String _url = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Send a notification'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Title'),
                  onSaved: (value) {
                    _title = value ?? '';
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Body'),
                  onSaved: (value) {
                    _body = value ?? '';
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a body';
                    }
                    return null;
                  },
                ),
                SwitchListTile(
                  title: Text('Include URL'),
                  value: _includeUrl,
                  onChanged: (bool value) => setState(() => _includeUrl = value),
                ),
                if (_includeUrl)
                  TextFormField(
                    decoration: InputDecoration(labelText: 'URL'),
                    onSaved: (value) => _url = value ?? '',
                    validator: (value) {
                      if (_includeUrl && (value == null || value.isEmpty)) {
                        return 'Please enter a URL';
                      }
                      if (value != null && (!value.startsWith('http') || !value.startsWith('https'))) {
                        return 'URL must start with http';
                      }
                      return null;
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Send'),
          onPressed: () async {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              widget.onCreateNotification(
                title: _title,
                body: _body,
                url: _includeUrl ? _url : null,
              );
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }
}
