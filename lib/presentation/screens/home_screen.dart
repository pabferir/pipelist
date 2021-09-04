import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/list_handler/list_handler_bloc.dart';
import 'package:pipelist/application/blocs/navigation_handler/navigation_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/infrastructure/repositories/firestore_repository.dart';
import 'package:pipelist/presentation/pages/contexts_page.dart';
import 'package:pipelist/presentation/pages/inbox_page.dart';
import 'package:pipelist/presentation/pages/lists_page.dart';
import 'package:pipelist/presentation/pages/reviews_page.dart';
import 'package:pipelist/presentation/widgets/add_edit_list_form.dart';
import 'package:pipelist/presentation/widgets/add_edit_task_form.dart';

class HomeScreen extends StatelessWidget {
  final _firestoreRepository = FirestoreRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskHandlerBloc>(
          create: (context) {
            return TaskHandlerBloc(mediator: _firestoreRepository)
              ..add(TasksLoaded());
          },
        ),
        BlocProvider<ListHandlerBloc>(
          create: (context) {
            return ListHandlerBloc(mediator: _firestoreRepository)
              ..add(ListsLoaded());
          },
        ),
      ],
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, activePage) {
          return Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.account_circle_outlined,
              ),
              title: _resolveCurrentPageTitle(context, activePage),
              centerTitle: true,
              actions: _resolveCurrentPageBarAction(context, activePage),
            ),
            body: _resolveCurrentPage(context, activePage),
            bottomNavigationBar: BottomNavigationBar(
              key: UniqueKey(),
              currentIndex:
                  BlocProvider.of<NavigationBloc>(context).currentPageIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: "Inbox",
                  icon: Icon(
                    Icons.inbox_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Lists",
                  icon: Icon(
                    Icons.book_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Add",
                  icon: Icon(
                    Icons.add_rounded,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Contexts",
                  icon: Icon(
                    Icons.fact_check_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Reviews",
                  icon: Icon(
                    Icons.local_cafe_outlined,
                  ),
                ),
              ],
              onTap: (index) {
                if (index == 2) {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) => AddEditTaskForm(
                      key: UniqueKey(),
                      isEdit: false,
                      onSaveCallback: (title) {
                        BlocProvider.of<TaskHandlerBloc>(context).add(
                          TaskAdded(
                            TaskEntity(
                              title: title,
                              isComplete: false,
                              listId: 'inbox',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(PageUpdated(pageIndex: index));
                }
              },
            ),
          );
        },
      ),
    );
  }

  _resolveCurrentPage(BuildContext context, NavigationState activePage) {
    if (activePage is InboxPageLoadSucceded)
      return InboxPage();
    else if (activePage is ListsPageLoadSucceded)
      return ListsPage();
    else if (activePage is ContextsPageLoadSucceded)
      return ContextsPage();
    else if (activePage is ReviewsPageLoadSucceded) return ReviewsPage();
  }

  _resolveCurrentPageTitle(BuildContext context, NavigationState activePage) {
    if (activePage is InboxPageLoadSucceded)
      return Text('Entrada');
    else if (activePage is ListsPageLoadSucceded)
      return Text('Listas');
    else if (activePage is ContextsPageLoadSucceded)
      return Text('Contextos');
    else if (activePage is ReviewsPageLoadSucceded) return Text('Revisiones');
  }

  _resolveCurrentPageBarAction(
      BuildContext context, NavigationState activePage) {
    if (activePage is InboxPageLoadSucceded)
      return [
        IconButton(
          icon: Icon(Icons.filter_alt),
          onPressed: () {},
        )
      ];
    else if (activePage is ListsPageLoadSucceded) {
      return [
        IconButton(
          key: UniqueKey(),
          icon: Icon(Icons.add_rounded),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => AddEditListForm(
                key: UniqueKey(),
                isEdit: false,
                onSaveCallback: (title) {
                  BlocProvider.of<ListHandlerBloc>(context).add(
                    ListAdded(
                      ListEntity(
                        title: title,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ];
    } else
      return [
        IconButton(
          icon: Icon(Icons.more_vert_rounded),
          onPressed: () {},
        )
      ];
  }
}
