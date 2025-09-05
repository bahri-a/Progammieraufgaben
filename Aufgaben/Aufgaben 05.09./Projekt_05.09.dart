abstract class DatabaseRepository {
  void create(String vokabel, String ubersetzung);
  void read(String text);
  void update(String text);
  void delete(String text, String text_update);
}

class MockDatabaseRepository implements DatabaseRepository {
  Map<String, String> vokabeln = {};

  @override
  void create(String vokabel, String ubersetzung) {
    vokabeln[vokabel] = ubersetzung;
    vokabeln[ubersetzung] = vokabel;
  }

  @override
  void delete(String vokabel) {
    vokabeln.remove(vokabel);
  }

  @override
  void read(String vokabel) {
    vokabeln.entries;
  }

  @override
  void update(String text, String text_update) {
    text = text_update;
  }
}

void main(List<String> args) {}
