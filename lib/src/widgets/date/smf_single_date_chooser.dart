import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

/// Date chooser.
class SmfSingleDateChooser extends StatefulWidget {
  const SmfSingleDateChooser({
    super.key,
    this.firstDate,
    this.lastDate,
    required this.selectedDate,
    required this.onDateSelected,
  });

  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime selectedDate;
  final Function(DateTime selectedDate) onDateSelected;

  @override
  State<SmfSingleDateChooser> createState() => _SmfSingleDateChooserState();
}

class _SmfSingleDateChooserState extends State<SmfSingleDateChooser> {
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

  DateTime getSubDate(DateTime date, int days) {
    return date.subtract(Duration(days: days));
  }

  DateTime getAddDate(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  void changeDateIndex(DateTime date) {
    widget.onDateSelected(date);
    moveScrollCenter();
  }

  void moveScrollCenter() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent / 2,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          // Date and choose date icon
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.selectedDate.toFormattedString('dd MMMM, yyyy'),
                  style: Theme.of(context).textTheme.headline6,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        final selectedDate = await showAnimatedDatePicker(
                          context: context,
                          initialDate: widget.selectedDate,
                          firstDate: widget.firstDate ?? DateTime(1900),
                          lastDate: widget.lastDate ?? DateTime(3000),
                          // use to disable the selection of weekend
                          // selectableDayPredicate: widget.disableWeekend
                          //     ? (dateTime) {
                          //         return dateTime.weekday != DateTime.saturday &&
                          //             dateTime.weekday != DateTime.sunday;
                          //       }
                          //     : null,
                        );

                        if (selectedDate != null) {
                          widget.onDateSelected(selectedDate);
                        }
                      },
                      icon: const Icon(Icons.calendar_month_outlined),
                    ),
                    const SizedBox(width: 5),
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

          if (_isDateRowShow) const SizedBox(height: 10),

          // Single date row
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
                    children: List.generate(7, (index) {
                      // final firstDayOfWeek =
                      //         DateTimeUtil.findFirstDateOfTheWeek(widget.selectedDate);
                      final firstDate = getSubDate(widget.selectedDate, 3);

                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: SmfSingleDate(
                          dateTime: getAddDate(firstDate, index),
                          selectedDate: widget.selectedDate,
                          onSelected: (date) => changeDateIndex(date),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
