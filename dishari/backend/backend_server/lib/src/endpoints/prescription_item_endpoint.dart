import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrescriptionItemEndpoint extends Endpoint {
  Future<PrescriptionItem> create(
      Session session, PrescriptionItem item) async {
    return PrescriptionItem.db.insertRow(session, item);
  }

  Future<PrescriptionItem?> read(Session session, int id) async {
    return PrescriptionItem.db.findById(session, id);
  }

  Future<List<PrescriptionItem>> readAll(Session session) async {
    return PrescriptionItem.db.find(session);
  }

  Future<PrescriptionItem> update(
      Session session, PrescriptionItem item) async {
    return PrescriptionItem.db.updateRow(session, item);
  }

  Future<bool> delete(Session session, int id) async {
    final deleted = await PrescriptionItem.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }
}
