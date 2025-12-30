import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class MedicalHistoryEndpoint extends Endpoint {
  Future<MedicalHistory> create(
      Session session, MedicalHistory medicalHistory) async {
    return MedicalHistory.db.insertRow(session, medicalHistory);
  }

  Future<MedicalHistory?> read(Session session, int id) async {
    return MedicalHistory.db.findById(session, id);
  }

  Future<List<MedicalHistory>> readAll(Session session) async {
    return MedicalHistory.db.find(session);
  }

  Future<MedicalHistory> update(
      Session session, MedicalHistory medicalHistory) async {
    return MedicalHistory.db.updateRow(session, medicalHistory);
  }

  Future<bool> delete(Session session, int id) async {
    final deleted = await MedicalHistory.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }
}
