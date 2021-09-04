import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pipelist/domain/entities/list_entity.dart';

typedef OnSaveCallback = Function(
  String title,
  // String listId,
);

class AddEditListForm extends StatefulWidget {
  final bool isEdit;
  final OnSaveCallback onSaveCallback;
  final ListEntity? list;

  const AddEditListForm({
    required Key key,
    required this.isEdit,
    required this.onSaveCallback,
    this.list,
  }) : super(key: key);

  @override
  _AddEditListFormState createState() => _AddEditListFormState();
}

class _AddEditListFormState extends State<AddEditListForm> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _title;
  // String _listId;

  bool get isEdit => widget.isEdit;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      child: Form(
        key: _formKey,
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
                    isEdit ? 'Editar lista' : 'Añadir lista',
                    textAlign: TextAlign.center,
                  ),
                ),
                RawMaterialButton(
                  key: UniqueKey(),
                  child: Text('OK'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      widget.onSaveCallback(
                        _title,
                        // _listId,
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
              child: TextFormField(
                initialValue: isEdit ? widget.list!.title : '',
                key: UniqueKey(),
                autofocus: true,
                style: textTheme.headline6,
                decoration: InputDecoration(
                    hintText:
                        'Nueva lista...'), // TO DO: resolve without hardcoding?
                validator: (textValue) {
                  return textValue!.trim().isEmpty
                      ? 'No puede estar vacío' // TO DO: resolve without hardcoding?
                      : null;
                },
                onSaved: (textValue) => _title = textValue!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
