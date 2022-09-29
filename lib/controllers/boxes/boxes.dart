import 'package:hive/hive.dart';

class Boxes<BoxT extends HiveObject> {
  final String boxName;

  Boxes(this.boxName);

  Future<void> update(BoxT obj) async {
    await obj.save();
  }

  Future<int> add(BoxT obj) async {
    return await Hive.box<BoxT>(boxName).add(obj);
  }

  Future<void> delete(BoxT obj) async {
    if (!findAll().contains(obj)) {
      print("Couldent delete $obj: not found");
      return;
    }
    if (!obj.isInBox) {
      print("Couldent delete $obj: not in box");
      return;
    }
    // print(findAll());
    await Hive.box<BoxT>(boxName).delete(obj.key);
  }

  List<BoxT> findAll() {
    return Hive.box<BoxT>(boxName).values.toList();
  }

  Future<void> deleteById(final String id) async {
    final tmp = find(id);
    if (tmp != null) {
      await Hive.box<BoxT>(boxName).delete(tmp);
    }
  }

  BoxT? find(final String id) {
    return Hive.box<BoxT>(boxName).get(id);
  }

  Future clear() async {
    await Hive.box<BoxT>(boxName).clear();
  }

  Future addList(final List<BoxT> data) async {
    await Hive.box<BoxT>(boxName).addAll(data);
  }

  Future set(final List<BoxT> data) async {
    await Hive.box<BoxT>(boxName).clear();
    await Hive.box<BoxT>(boxName).addAll(data);
  }
}