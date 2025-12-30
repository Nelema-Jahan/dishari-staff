import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class EmergencyCaseEndpoint extends Endpoint {
  Future<EmergencyCase> create(
    Session session,
    EmergencyCase emergencyCase,
  ) async {
    return EmergencyCase.db.insertRow(session, emergencyCase);
  }

  Future<EmergencyCase?> read(Session session, int id) async {
    return EmergencyCase.db.findById(session, id);
  }

  Future<List<EmergencyCase>> readAll(Session session) async {
    return EmergencyCase.db.find(session);
  }

  Future<EmergencyCase> update(
    Session session,
    EmergencyCase emergencyCase,
  ) async {
    return EmergencyCase.db.updateRow(session, emergencyCase);
  }

  Future<bool> delete(Session session, int id) async {
    final deletedItems = await EmergencyCase.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    // deletedItems is a List<EmergencyCase>
    return deletedItems.isNotEmpty;
  }
}
