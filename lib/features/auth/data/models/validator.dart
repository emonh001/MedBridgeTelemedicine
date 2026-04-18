class Validators {
  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Full name is required";
    }
    if (value.trim().length < 3) {
      return "Name must be at least 3 characters";
    }
    return null;
  }


  static String? age(String? value) {
    if (value == null || value.isEmpty) {
      return "Age is required";
    }

    final age = int.tryParse(value);
    if (age == null || age <= 0) {
      return "Enter valid age";
    }

    return null;
  }

  static String? gender(String? value) {
    if (value == null || value.isEmpty) {
      return "Select gender";
    }
    return null;
  }

  static String? organization(String? value) {
    if (value == null || value.isEmpty) {
      return "Organization is required";
    }
    return null;
  }

  static String? trainingStatus(String? value) {
    if (value == null) return "Select training status";
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    final emailRegex =
    RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email";
    }

    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

    if (value.length < 10) {
      return "Enter a valid phone number";
    }

    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }

    return null;
  }

  static String? confirmPassword(
      String? value, String password) {
    if (value == null || value.isEmpty) {
      return "Confirm your password";
    }

    if (value != password) {
      return "Passwords do not match";
    }

    return null;
  }


  static String? specialization(String? value) {
    if (value == null || value.isEmpty) {
      return "Select your specialization";
    }
    return null;
  }


  static String? experience(String? value) {
    if (value == null || value.isEmpty) {
      return "Experience is required";
    }

    final exp = int.tryParse(value);
    if (exp == null || exp < 0) {
      return "Enter valid experience";
    }

    return null;
  }


  static String? hospital(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Hospital/Clinic name is required";
    }
    return null;
  }
}