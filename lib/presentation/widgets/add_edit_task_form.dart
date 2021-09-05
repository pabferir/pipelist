import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/domain/entities/task_entity.dart';

typedef OnSaveCallback = Function(
  String updatedTitle,
  String updatedListId,
);

class AddEditTaskForm extends StatefulWidget {
  final bool isEdit;
  final OnSaveCallback onSaveCallback;
  final TaskEntity? task;
  final List<ListEntity> lists;

  const AddEditTaskForm({
    required Key key,
    required this.isEdit,
    required this.onSaveCallback,
    this.task,
    required this.lists,
  }) : super(key: key);

  @override
  _AddEditTaskFormState createState() => _AddEditTaskFormState();
}

class _AddEditTaskFormState extends State<AddEditTaskForm> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String _updatedTitle;
  late String _updatedListId;

  bool get isEdit => widget.isEdit;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            Row(
              children: [
                RawMaterialButton(
                    key: UniqueKey(),
                    child: Text('Cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Expanded(
                  child: Text(
                    isEdit ? 'Editar tarea' : 'Añadir tarea',
                    textAlign: TextAlign.center,
                  ),
                ),
                RawMaterialButton(
                  key: UniqueKey(),
                  child: Icon(Icons.arrow_upward_rounded),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      widget.onSaveCallback(
                        _updatedTitle,
                        _updatedListId,
                      );
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 35.0,
                vertical: 10.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: isEdit ? widget.task!.title : '',
                    key: UniqueKey(),
                    autofocus: true,
                    style: textTheme.headline6,
                    decoration: InputDecoration(
                        hintText:
                            '¿Qué tienes que hacer...?'), // TO DO: resolve without hardcoding?
                    validator: (textValue) {
                      return textValue!.trim().isEmpty
                          ? 'No puede estar vacío' // TO DO: resolve without hardcoding?
                          : null;
                    },
                    onSaved: (textValue) => _updatedTitle = textValue!,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: isEdit
                          ? widget.lists
                              .firstWhere(
                                  (list) => list.id == widget.task!.listId)
                              .title
                          : 'Entrada',
                    ),
                    items: widget.lists.map((list) {
                      return DropdownMenuItem<String>(
                        value: list.id,
                        child: Text(list.title),
                      );
                    }).toList(),
                    onChanged: (newValue) => _updatedListId = newValue!,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
