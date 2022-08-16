import 'package:flutter/material.dart';
import 'package:weather_app/api/services/api_provider.dart';
import 'package:weather_app/models/task/task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late TaskData taskData;
  bool isLoading = true;
  bool isError = false;

  _init() async {
    try {
      isLoading = true;
      setState(() {});
      taskData = await ApiProvider.getTask();
      isLoading = false;
      setState(() {});
    } catch (e) {
      isLoading = false;
      isError = true;
      setState(() {});
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _init();
        },
        child: SizedBox(
          child: ListView(
            children: [
              Center(
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : isError
                          ? const Text("Error")
                          : Column(
                              children: [
                                Image.network(taskData.flagImage),
                                Text(taskData.capital),
                                Text(taskData.countryName),
                                Text(taskData.populationCount),
                                Text(
                                    "Region: ${taskData.regioonsCount.toString()}"),
                              ],
                            )),
            ],
          ),
        ),
      ),
    );
  }
}
