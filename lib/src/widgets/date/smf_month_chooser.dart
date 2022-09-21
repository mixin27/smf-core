import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class MonthChooser extends StatefulWidget {
  const MonthChooser({
    super.key,
    this.firstDate,
    this.lastDate,
    required this.selectedDate,
    required this.onDateSelected,
    this.showMonthRow = false,
  });

  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime selectedDate;
  final Function(DateTime selectedDate) onDateSelected;
  final bool showMonthRow;

  @override
  State<MonthChooser> createState() => _MonthChooserState();
}

class _MonthChooserState extends State<MonthChooser> {
  late ScrollController _scrollController;
  bool _isDateRowShow = true;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    _scrollController = ScrollController();
  }

  void changeDateIndex(DateTime date, int index) {
    widget.onDateSelected(date);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void showYearPickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Year"),
          content: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: widget.firstDate ?? DateTime(1900),
              lastDate: widget.lastDate ?? DateTime(3000),
              initialDate: widget.selectedDate,
              selectedDate: widget.selectedDate,
              onChanged: (DateTime selectedDate) {
                widget.onDateSelected(selectedDate);
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          final dateTime = widget.selectedDate;
                          final firstDateOfMonth =
                              DateTime(dateTime.year, dateTime.month, 1);
                          final subDate = firstDateOfMonth
                              .subtract(const Duration(days: 1));
                          widget.onDateSelected(subDate);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        widget.selectedDate.toFormattedString('MMM, yyyy'),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                        onPressed: () {
                          final dateTime = widget.selectedDate;
                          final firstDateOfMonth =
                              DateTime(dateTime.year, dateTime.month + 1, 0);
                          final addDate =
                              firstDateOfMonth.add(const Duration(days: 1));
                          widget.onDateSelected(addDate);
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        final selectedDate = await showAnimatedDatePicker(
                          context: context,
                          initialDate: widget.selectedDate,
                          firstDate: widget.firstDate ?? DateTime(1900),
                          lastDate: widget.lastDate ?? DateTime(3000),
                          initialDatePickerMode: DatePickerMode.year,
                        );
                        if (selectedDate != null) {
                          widget.onDateSelected(selectedDate);
                        }
                      },
                      icon: const Icon(Icons.calendar_month_outlined),
                    ),
                    if (widget.showMonthRow) const SizedBox(width: 5),
                    if (widget.showMonthRow)
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _isDateRowShow = !_isDateRowShow;
                          });
                        },
                        icon: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          transitionBuilder: (child, animation) {
                            return RotationTransition(
                              turns: child.key == const ValueKey(1)
                                  ? Tween<double>(begin: 0, end: 1)
                                      .animate(animation)
                                  : Tween<double>(begin: 1, end: 0)
                                      .animate(animation),
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                          child: _isDateRowShow
                              ? const Icon(
                                  Icons.close,
                                  key: ValueKey(1),
                                )
                              : const Icon(
                                  Icons.expand_more,
                                  key: ValueKey(2),
                                ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (widget.showMonthRow && _isDateRowShow) const Divider(),
          if (widget.showMonthRow && _isDateRowShow) const SizedBox(height: 10),
          if (widget.showMonthRow)
            AnimatedSlide(
              offset: _isDateRowShow ? Offset.zero : const Offset(0, -2),
              duration: const Duration(milliseconds: 300),
              child: AnimatedOpacity(
                opacity: _isDateRowShow ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                child: Visibility(
                  visible: _isDateRowShow,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    child: Row(
                      children: List.generate(
                        12,
                        (index) {
                          final today = DateTime.now();
                          final dateTime = DateTime(today.year, index + 1);

                          return Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: _MonthChooserItem(
                              // key: keys[index],
                              dateTime: dateTime,
                              selectedDate: widget.selectedDate,
                              onSelected: (date) =>
                                  changeDateIndex(date, index),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

class _MonthChooserItem extends StatelessWidget {
  const _MonthChooserItem({
    Key? key,
    this.dateTime,
    required this.selectedDate,
    required this.onSelected,
  }) : super(key: key);

  final DateTime? dateTime;
  final DateTime selectedDate;
  final Function(DateTime) onSelected;

  @override
  Widget build(BuildContext context) {
    final date = dateTime ?? DateTime.now();
    final dateString = date.toFormattedString('MMM');

    if (selectedDate.month == dateTime?.month) {
      return InkWell(
        onTap: () {
          onSelected(date);
        },
        child: Container(
          width: ALC.getWidth(50),
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 14),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Text(
                dateString,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onPrimary,
                      height: 1.9,
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: ALC.getHeight(12)),
                height: ALC.getHeight(8),
                width: ALC.getWidth(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return InkWell(
      onTap: () {
        onSelected(date);
      },
      child: Container(
        width: ALC.getWidth(50),
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 14),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Text(
              dateString,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onBackground,
                    height: 1.9,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
