import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarTopWidget extends StatefulWidget {
  const CalendarTopWidget({
    super.key,
    required this.size,
    required this.start,
  });

  final Size size;
  final DateTime start;

  @override
  State<CalendarTopWidget> createState() => _CalendarTopWidgetState();
}

class _CalendarTopWidgetState extends State<CalendarTopWidget> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    print(size.width);
    print(size.height);

    return SizedBox(
      height: size.width / 6.5,
      width: widget.size.width,
      child: Card(
        elevation: 1,
        color: Colors.grey.shade100,
        child: Expanded(
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = index;
                    });
                  },
                  child: SizedBox(
                    height: size.height * 0.1,
                    width: size.width * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          (widget.start.day + index).toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          DateFormat('E').format(
                            widget.start.add(
                              Duration(days: index),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        index == _selected
                            ? Container(
                                height: 5,
                                width: size.width * 0.09,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.rectangle,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
