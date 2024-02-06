import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../db_helper/db_helper.dart';
import '../model/task.dart';

class TaskFormScreen extends StatefulWidget {
  Task? task;

  TaskFormScreen(this.task, {super.key});
  @override
  _TaskFormScreenState createState() => _TaskFormScreenState();
}

class _TaskFormScreenState extends State<TaskFormScreen> {

  Task? task;
  DbHelper helper = DbHelper();
  List<String> item = ['High', 'Medium', 'Low'];

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  String _selectedPriority = 'High';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? currentDate,
      firstDate: currentDate,
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  void initState(){
    task = widget.task;
    if(task != null){
      _nameController.text = task!.name ?? '';
      _descriptionController.text = task!.description ?? '';
      _selectedDate = DateTime.now();
      _selectedTime = TimeOfDay.now();
      _selectedPriority = task!.priority ??'';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color getPriorityColor(String priority) {
      switch (priority) {
        case 'High':
          return Colors.red;
        case 'Medium':
          return Colors.blue;
        case 'Low':
          return Colors.green;
        default:
          return Colors.green;
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(task != null ? 'Update Task' : 'Add Task'),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => _selectDate(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'DATE',
                            ),
                            child: Text(
                              "${_selectedDate.toLocal()}".split(' ')[0],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: InkWell(
                          onTap: () => _selectTime(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'TIME',
                            ),
                            child: Text(
                              "${_selectedTime.format(context)}",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height:50),
                  Text(
                    'Selected Value:    $_selectedPriority',
                    style: TextStyle(fontSize: 18,color: getPriorityColor(_selectedPriority)),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: getPriorityColor(_selectedPriority),
                    child: DropdownButton<String>(
                      value: _selectedPriority,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedPriority = newValue!;
                        });
                      },
                      items: <String>['High', 'Medium', 'Low']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {

                      String name = _nameController.text.toString().trim();
                      String desc = _descriptionController.text.toString().trim();
                      String date = "${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}";
                      String time = "${_selectedTime.hour}:${_selectedTime.minute}";
                      String priority = _selectedPriority;

                      print('''
                          name : $name
                          desc : $desc
                          date : $date
                          time : $time
                          priority : $priority
                      ''');
                      if (task != null) {
                        print("call these");
                        // update
                        var mTask = Task(
                          name: name,
                          description: desc,
                          date: date,
                          time: time,
                          priority: priority,
                          id: task!.id,
                        );
                        updateTask(mTask, context);
                      } else {
                        print("Call");
                        if (_formKey.currentState!.validate()) {
                          addTask(name, desc,date, time, priority, context);
                        }
                      }
                    },
                    child: Text(task != null ? 'Update Task' : 'Add Task'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  addTask(
      String name, String desc, String date,String time,String priority, BuildContext context) async {
    var task = Task(
      name: name,
      description: desc,
      date: date,
      time: time,
      priority: priority,
    );

    var id = await helper.insertTask(task);
    if (id != -1) {
      print('category added');
      task.id = id;
      Navigator.pop(context, task);
    }
  }
  Future<void> updateTask(Task mTask, BuildContext context) async {
    var id = await helper.updateTask(mTask);
    if (id != -1) {
      print('category updated');
      Navigator.pop(context, mTask);
    }
  }

}


