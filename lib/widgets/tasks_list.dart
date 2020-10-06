import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return SwipeActionCell(
              key: ObjectKey(task),
              trailingActions: <SwipeAction>[
                SwipeAction(
                    title: 'Delete',
                    onTap: (CompletionHandler handler) async {
                      await handler(true);
                      taskData.removeTask(task);
                    })
              ],
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.removeTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
