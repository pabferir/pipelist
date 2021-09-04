import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pipelist/domain/entities/list_entity.dart';

class ListItemWidget extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ListEntity list;

  const ListItemWidget({
    Key? key,
    required this.onDismissed,
    required this.onTap,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: onDismissed,
      child: ListTile(
        onTap: onTap,
        title: Hero(
          tag: '${list.id}__heroTag',
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              list.title,
              key: UniqueKey(),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        trailing: Icon(Icons.navigate_next_rounded),
      ),
      background: Container(color: Colors.red),
    );
  }
}
