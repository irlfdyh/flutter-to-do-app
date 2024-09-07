class ToDoEntity {
  String _title = "";
  String get title => _title;

  String _description = "";
  String get description => _description;

  String _dueDate = "";
  String get dueDate => _dueDate;

  ToDoEntity(
    String title,
    String description,
    String dueDate,
  ) {
    _title = title;
    _description = description;
    _dueDate = dueDate;
  }
}
