import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

/// Date switcher with left and right arrow icon.
class SmfDateSwitcher extends StatefulWidget {
  const SmfDateSwitcher({
    super.key,
    required this.onDateChange,
  });

  final Function(DateTime selectedDate) onDateChange;

  @override
  State<SmfDateSwitcher> createState() => _SmfDateSwitcherState();
}

class _SmfDateSwitcherState extends State<SmfDateSwitcher> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ALC.getHeight(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              final yesterday = _selectedDate.subtract(const Duration(days: 1));
              setState(() {
                _selectedDate = yesterday;
              });
              widget.onDateChange(yesterday);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
            ),
          ),
          Text(
            _selectedDate.toFormattedString('dd MMMM, yyyy'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          IconButton(
            onPressed: () {
              final tmr = _selectedDate.add(const Duration(days: 1));
              setState(() {
                _selectedDate = tmr;
              });
              widget.onDateChange(tmr);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 30,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
