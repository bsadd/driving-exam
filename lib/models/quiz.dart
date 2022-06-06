// ignore_for_file: constant_identifier_names

class Quiz {
  final int id, answer;
  final String question;
  final List<String> options;

  Quiz({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}
