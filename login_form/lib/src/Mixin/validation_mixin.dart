class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Plase enter valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be more than 4';
    }
    return null;
  }
}
