import 'package:flutter/material.dart';
import 'package:google_tasks/widgets/widgets.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO(mono): 本物はAppBarではなくSliver使うと良さそう
      appBar: AppBar(
        title: const Text('My Tasks'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const GoogleAdd(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset.zero,
            blurRadius: 8,
          )
        ]),
        child: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
