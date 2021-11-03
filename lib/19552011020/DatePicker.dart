import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DatePicker createState()=> _DatePicker();
}

class _DatePicker extend State<DatePicker> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Date Picker'),
              style: ElevatedButton.styleFrom(
                primary: Color.white,
                onPrimary: Colors.red,
              ),
              onPressed: () {
                _getDate(context);
              },
            )
            SizedBox(
              height: 15,
            )
            Text('Date value: '+ _dateFormat(_selectedDate),
            style: TextStyle(color: Colors.white),
            )
          ],
    )
  }
}

_getDate(context) async{
  final _datePick = await showDatePicker(context: _context, initialDate: _selectedDate, firstDate: _selectedDate,subtract(Duration(days:30)
  )
  lastDate: DateTime(_selectedDate.year + 1)
  );

  if(_datePick !=null){
    setState(() {
      selectedDate = _datePick;
    })
  }
}
}
