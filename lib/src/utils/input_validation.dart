String? validateInput({
  required String input,
  int minLength = 0,
  int maxLength = 255,
}) {
  if (input.isEmpty && minLength != 0) {
    return 'This field cannot be empty';
  }
  if (input.length < minLength) {
    return 'Minimum $minLength characters';
  } else if (input.length > maxLength) {
    return 'Maximum  $maxLength characters.';
  }
}
