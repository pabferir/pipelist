import 'package:pipelist/domain/entities/list_entity.dart';

abstract class IListMediator {
  Future<void> createList(ListEntity listEntity);
  Stream<List<ListEntity>> loadLists();
  Future<void> updateList(ListEntity listEntity);
  Future<void> deleteList(ListEntity listEntity);
}
