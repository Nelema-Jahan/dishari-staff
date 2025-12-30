import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrescriptionEndpoint extends Endpoint {
  Future<Prescription> create(
      Session session, Prescription prescription) async {
    return Prescription.db.insertRow(session, prescription);
  }

  Future<Prescription?> read(Session session, int id) async {
    return Prescription.db.findById(session, id);
  }

  Future<List<Prescription>> readAll(Session session) async {
    return Prescription.db.find(session);
  }

  Future<Prescription> update(
      Session session, Prescription prescription) async {
    return Prescription.db.updateRow(session, prescription);
  }

  Future<bool> delete(Session session, int id) async {
    final deleted = await Prescription.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }
}
