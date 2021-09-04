import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/list_handler/list_handler_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/presentation/screens/task_list_screen.dart';
import 'package:pipelist/presentation/widgets/list_item_widget.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListHandlerBloc, ListHandlerState>(
        builder: (newContext, state) {
      if (state is ListsLoadInProgress) {
        return Center(child: CircularProgressIndicator());
      } else if (state is ListsLoadSuccess) {
        final lists = state.loadedLists;
        if (lists.isEmpty) {
          return _showEmptyPageLayout();
        } else {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 20.0,
            ),
            child: ListView.builder(
              key: UniqueKey(),
              itemCount: lists.length,
              itemBuilder: (BuildContext listViewContext, int index) {
                final list = lists[index];
                return ListItemWidget(
                  list: list,
                  onDismissed: (direction) {
                    BlocProvider.of<ListHandlerBloc>(context)
                      ..add(ListDeleted(list));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Lista eliminada'),
                        action: SnackBarAction(
                          label: 'DESHACER',
                          onPressed: () {
                            BlocProvider.of<ListHandlerBloc>(context)
                              ..add(ListAdded(list));
                          },
                        ),
                      ),
                    );
                  },
                  onTap: () async {
                    BlocProvider.of<TaskHandlerBloc>(context)
                      ..add(TasksByListLoaded(list));
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return BlocProvider.value(
                            value: BlocProvider.of<TaskHandlerBloc>(context),
                            child: TaskListScreen(
                              key: UniqueKey(),
                              list: list,
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          );
        }
      }
      return _showErrorPageLayout();
    });
  }

  Widget _showEmptyPageLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.book_outlined,
            size: 120.0,
            // color: Color(0x73A99073),
          ),
          Text(
            'No hay listas',
            // style: TextStyle(
            //   fontWeight: FontWeight.w900,
            //   fontSize: 28,
            //   color: Color(0x73A99073),
            // ),
          ),
        ],
      ),
    );
  }

  Widget _showErrorPageLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Error al cargar las tareas',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
