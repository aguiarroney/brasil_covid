class State {
  final int id;
  final int cases;
  final int suspects;
  final int deaths;
  final int resfuses;
  final String uf;
  final String name;
  final String dateTime;

  State(
      {this.id,
      this.cases,
      this.suspects,
      this.deaths,
      this.resfuses,
      this.uf,
      this.name,
      this.dateTime});

  factory State.fromJson(Map<String, dynamic> json) {
    return State(
      id: json["uid"],
      uf: json["uf"],
      name: json["state"],
      cases: json["cases"],
      deaths: json["deaths"],
      suspects: json["suspects"],
      resfuses: json["refuses"],
      dateTime: json["datetime"],
    );
  }
}
