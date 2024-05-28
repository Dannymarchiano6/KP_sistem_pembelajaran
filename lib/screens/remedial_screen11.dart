import 'package:flutter/material.dart';

class RemedialScreen11 extends StatefulWidget {
  @override
  _RemedialScreenState createState() => _RemedialScreenState();
}

class _RemedialScreenState extends State<RemedialScreen11> {
  final _formKey = GlobalKey<FormState>();
  String? nis;
  String? name;
  DateTime? date;
  String? day;

  // Function to handle form submission
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Handle form submission here (e.g., save to database)
      print('NIS: $nis');
      print('Name: $name');
      print('Date: $date');
      print('Day: $day');
      // Navigate back or show a success message
      Navigator.pop(context);
    }
  }

  // Function to display a date picker and update the date state
  void _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        day = _getDayOfWeek(pickedDate);
      });
    }
  }

  // Function to get the day of the week as a string
  String _getDayOfWeek(DateTime date) {
    List<String> days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return days[date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remedial menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Silahkan Formulir Remedial terlebih dahulu',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'NIS',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter NIS';
                  }
                  return null;
                },
                onSaved: (value) {
                  nis = value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: _pickDate,
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (date == null) {
                        return 'Please pick a date';
                      }
                      return null;
                    },
                    controller: TextEditingController(
                      text: date != null
                          ? date!.toLocal().toString().split(' ')[0]
                          : '',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Day',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                readOnly: true,
                controller: TextEditingController(
                  text: day != null ? day! : '',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
