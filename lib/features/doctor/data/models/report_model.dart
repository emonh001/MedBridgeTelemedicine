class ReportModel {
  final String name;
  final String url;
  final String size;

  const ReportModel({
    required this.name,
    required this.url,
    required this.size,
  });

  bool get isPdf => name.toLowerCase().endsWith('.pdf');
}