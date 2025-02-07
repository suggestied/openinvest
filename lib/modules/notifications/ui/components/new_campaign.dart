import 'package:apparence_kit/core/menu/widgets/dialog.dart';
import 'package:apparence_kit/core/widgets/callout.dart';
import 'package:apparence_kit/environnements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';

void showNewNotificationCampaignDialog({
  required BuildContext context,
  required OnNewCampaign onNewCampaign,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) => NewCampaignForm(onNewCampaign: onNewCampaign),
  );
}

typedef OnNewCampaign = void Function({
  required String title,
  required String body,
  required DateTime scheduledDate,
  required String extraData,
  required String channel,
});


class NewCampaignForm extends ConsumerStatefulWidget {
  final OnNewCampaign onNewCampaign;

  const NewCampaignForm({super.key, required this.onNewCampaign});

  @override
  ConsumerState<NewCampaignForm> createState() => _NewCampaignFormState();
}

final _formKey = GlobalKey<FormState>();

class _NewCampaignFormState extends ConsumerState<NewCampaignForm> {

  String _title = '';
  String _body = '';
  DateTime? _scheduledDate;
  DateTime? _scheduledTime;
  String _extraData = '';
  String _channel = '';
  bool _includeJsonExtraData = false;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: 'Create new campaign',
      icon: HugeIcons.strokeRoundedTimeSchedule,
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 16.0,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              onChanged: (value) => _title = value,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Body',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a body';
                }
                return null;
              },
              onChanged: (value) => _body = value,
            ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Scheduled Date',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              controller: TextEditingController(
                text: _scheduledDate != null
                    ? _scheduledDate!.toLocal().toString().split(' ')[0]
                    : '',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please pick a date';
                }
                return null;
              },
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                  
                );
                if (pickedDate != null) {
                  setState(() {
                    _scheduledDate = pickedDate;
                  });
                }
              },
            ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Scheduled Time',
                suffixIcon: Icon(Icons.access_time),
              ),
              controller: TextEditingController(
                text: _scheduledTime != null
                    ? _scheduledTime!.toLocal().toString().split(' ')[1].substring(0, 5)
                    : '',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please pick a time';
                }
                return null;
              },
              onTap: () async {
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickedTime != null) {
                  setState(() {
                    _scheduledTime = DateTime(
                      _scheduledDate!.year,
                      _scheduledDate!.month,
                      _scheduledDate!.day,
                      pickedTime.hour,
                      pickedTime.minute,
                    );
                  });
                }
              },
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Channel'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a channel';
                }
                return null;
              },
              items: ref.read(environmentProvider)
                .notificationsTopicChannels
                .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                )).toList(),
              onChanged: (String? newValue) => setState(() => _channel = newValue ?? ''),
            ),
            Callout.info('''Users are subscribed to a topic channel according to their locale. Open the "notifications_repository.dart" on your mobile app code to add more.'''),
            SwitchListTile(
                  title: Text('Include extra data (JSON)'),
                  value: _includeJsonExtraData,
                  onChanged: (bool value) => setState(() => _includeJsonExtraData = value),
                ),
            if (_includeJsonExtraData)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Extra data (JSON)',
                ),
                maxLines: 8,
                onChanged: (value) => _extraData = value,
              ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(), 
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onNewCampaign(
                        title: _title,
                        body: _body,
                        scheduledDate: _scheduledTime!,
                        extraData: _extraData,
                        channel: _channel,
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text('Schedule'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}