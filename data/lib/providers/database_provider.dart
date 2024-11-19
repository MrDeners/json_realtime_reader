import 'package:core/core.dart';

class DatabaseProvider {
  void getDataRealtime({
    required Function(List<Map<String, dynamic>>) onData,
    required String collectionKey,
  }) {
    FirebaseFirestore.instance.collection(collectionKey).snapshots().listen(
          (QuerySnapshot<Map<String, dynamic>> snapshots) => onData(
            snapshots.docs
                .map((QueryDocumentSnapshot<Map<String, dynamic>> e) => e.data())
                .toList(),
          ),
        );
  }

  Future<void> deleteDataWithFilter({
    required String fieldValue,
    required String fieldKey,
    required String collectionKey,
  }) async {
    final QuerySnapshot<Object?> querySnapshot = await FirebaseFirestore.instance
        .collection(collectionKey)
        .where(fieldKey, isEqualTo: fieldValue)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      for (final QueryDocumentSnapshot<Object?> doc in querySnapshot.docs) {
        await doc.reference.delete();
      }
    }
  }
}
