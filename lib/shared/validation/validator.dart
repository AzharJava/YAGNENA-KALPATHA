import 'regex.dart';

class Validator {
  static bool checkName({required String? name}) {
    if (name != null) {
      if (name.isEmpty) return false;
      return RegexExpressions.name.hasMatch(name);
    }
    return false;
  }

  static bool alphanumeric({required String? regno}) {
    if (regno != null) {
      if (regno.isEmpty) return false;

      return RegexExpressions.alphanumeric.hasMatch(regno);
    }
    return false;
  }

  static bool year({required String? year}) {
    if (year!.length == 4) return RegexExpressions.year.hasMatch(year);
    return false;
  }

  static bool checkEmail({required String? email}) {
    if (email != null) {
      if (email.isEmpty) return false;
      return RegexExpressions.email.hasMatch(email);
    }
    return false;
  }

  static bool checkMobileNumber({required String? mobile}) {
    if (mobile != null) {
      if (mobile.isEmpty) return false;
      return RegexExpressions.phoneNumber.hasMatch(mobile);
    }
    return false;
  }

  static bool checkOtp({required String otp}) {
    if (otp.length == 6) return RegexExpressions.otp.hasMatch(otp);
    return false;
  }

  static bool phoneNumber({required String phoneNumber}) {
    if (phoneNumber.length == 10)
      return RegexExpressions.phoneNumber.hasMatch(phoneNumber);
    return false;
  }

  static bool checkIsEmpty(String? string) {
    if (string == null)
      return true;
    else if (string.trim().isEmpty) return true;
    return false;
  }
}
