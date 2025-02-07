import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

void showGiftSubscriptionDialog({
  required BuildContext context, 
  required OnGiftSubscription onGiftSubscription,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) => GiftSubscriptionDialog(onGift: onGiftSubscription),
  );
}

typedef OnGiftSubscription = void Function(DateTime periodEndDate);

class GiftSubscriptionDialog extends StatefulWidget {
  final OnGiftSubscription onGift;

  const GiftSubscriptionDialog({super.key, required this.onGift});

  @override
  _GiftSubscriptionDialogState createState() => _GiftSubscriptionDialogState();
}

class _GiftSubscriptionDialogState extends State<GiftSubscriptionDialog> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _periodEndDate;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Gift Subscription'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Pick end Date'),
                trailing: Icon(Icons.calendar_today),
                onTap: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _periodEndDate = pickedDate;
                    });
                  }
                },
              ),
              if (_periodEndDate != null)
                Text(
                  'Gift a subscription from now to ${_periodEndDate?.toLocal().toString().split(' ')[0]}',
                  textAlign: TextAlign.left,
                  style: context.textTheme.bodyMedium,
                ),
            ],
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
          onPressed: _periodEndDate != null ? () {
            widget.onGift(_periodEndDate!);
            Navigator.of(context).pop();
          } : null,
          child: Text('OK'),
        ),
      ],
    );
  }
}
