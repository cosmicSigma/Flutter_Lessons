class ShortPasswordException implements Exception{
  ShortPasswordException(this.message);
  final String message;
}

class NoNumberException implements Exception{
  NoNumberException(this.message);
  final String message;
}

class NoUpperCaseException implements Exception{
  NoUpperCaseException(this.message);
  final String message;
}

class NoLowerCaseException implements Exception{
  NoLowerCaseException(this.message);
  final String message;
}

void validateLength(String password){
  final goodLength = RegExp(r'.{12,}');
  if(!password.contains(goodLength)){
    throw ShortPasswordException('Password must be at least 12 characters!');
  }
}
void validateLowercase(String password){
  final lowercase = RegExp(r'.[a-z]');
  if(!password.contains(lowercase)){
    throw ShortPasswordException("Password must have a lowercase letter");
  }
}
void validateUpperercase(String password){
  final uppercase = RegExp(r'.[A-Z]');
  if(!password.contains(uppercase)){
    throw ShortPasswordException("Password must have a uppercase letter");
  }
}
void validateNumber(String password){
  final number = RegExp(r'.[0-9]');
  if(!password.contains(number)){
    throw ShortPasswordException("Password must have a number");
  }
}

void validatePassword(String password){
  validateLength(password);
  validateLowercase(password);
  validateUpperercase(password);
  validateNumber(password);
}
void main(){
  const password = 'password1234';
  try{
    validatePassword(password);
    print('Password is valid');
  }on ShortPasswordException catch (e){
    print(e.message);
  }on NoLowerCaseException catch (e){
    print(e.message);
  }on NoUpperCaseException catch (e){
    print(e.message);
  }on NoNumberException catch (e){
    print(e.message);
  }
}