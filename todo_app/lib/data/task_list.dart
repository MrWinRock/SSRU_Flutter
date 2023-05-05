import '../models/task.dart';

List<Task> taskList = [
  Task(
      id: 0,
      body: 'Teaching states in flutter',
      status: Status.process,
      deadline: "04/05/2023",
      flag: Flags.personal),
  Task(
      id: 1,
      body: 'Implementing user authentication',
      status: Status.done,
      deadline: "04/05/2023",
      flag: Flags.none),
  Task(
      id: 2,
      body: 'Creating a responsive UI design',
      status: Status.done,
      deadline: "04/05/2023",
      flag: Flags.personal),
  Task(
      id: 2,
      body: 'Testing app on multiple devices',
      status: Status.none,
      deadline: "04/05/2023",
      flag: Flags.work),
  Task(
      id: 2,
      body: 'Preparing for presentation',
      status: Status.archive,
      deadline: "04/05/2023",
      flag: Flags.school),
];
