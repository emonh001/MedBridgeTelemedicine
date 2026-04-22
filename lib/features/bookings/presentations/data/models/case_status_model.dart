class CaseStatusModel {
  final String name;
  final String id;
  final String caseStatus;
  final String caseDate;

  CaseStatusModel({
    required this.name,
    required this.id,
    required this.caseStatus,
    required this.caseDate,
  });

  factory CaseStatusModel.fromJson(Map<String, dynamic> json) {
    return CaseStatusModel(
      name: json['name'],
      id: json['id'],
      caseStatus: json['caseStatus'],
      caseDate: json['caseDate'],
    );
  }
}