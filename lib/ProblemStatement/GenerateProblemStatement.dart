import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Button.dart';
import 'package:levelupindia/widgets/Snackbar.dart';
class GenerateProblem extends StatefulWidget {
  const GenerateProblem({super.key});

  @override
  State<GenerateProblem> createState() => _GenerateProblemState();
}

class _GenerateProblemState extends State<GenerateProblem> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController registrationDateController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();
  DateTime registrationDate = DateTime.now();
  DateTime dueDate = DateTime.now();
  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: controller == registrationDateController ? registrationDate : dueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != controller.text) {
      setState(() {
        controller.text = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:80.0,bottom: 80.0,left: 20.0,right: 20),
        child: Container(
          width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                      Text(
                        "Create A Problem Statement",
                        style:TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        controller: titleController,
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextFormField(
                        controller: descriptionController,
                        decoration: InputDecoration(labelText: 'Description'),
                      ),
                      TextFormField(
                        controller: categoryController,
                        decoration: InputDecoration(labelText: 'Category'),
                      ),
                      TextFormField(
                        controller: registrationDateController,
                        decoration: InputDecoration(
                          labelText: 'Registration Date Ending On',
                          suffixIcon: IconButton(
                            onPressed: () => _selectDate(context, registrationDateController),
                            icon: Icon(Icons.date_range),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: dueDateController,
                        decoration: InputDecoration(
                          labelText: 'Due Date',
                          suffixIcon: IconButton(
                            onPressed: () => _selectDate(context, dueDateController),
                            icon: Icon(Icons.date_range),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                MyButton(onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Posted Problem"));
                  Navigator.pop(context);
                  }, text: 'Submit',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
