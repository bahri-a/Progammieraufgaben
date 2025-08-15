enum NameDesEnums { accepted, rejected, failed }

void main(List<String> args) {
  Map<String, NameDesEnums> applications = {
    "Option 1": NameDesEnums.accepted,
    "Option 2": NameDesEnums.rejected,
    "Option 3": NameDesEnums.failed,
  };

  print(applications["Option 1"]);

  print(
    applications["Option 1"]?.name,
  ); // Fragezeichen macht den Print Null-sicher.

  print(NameDesEnums.values);
}
