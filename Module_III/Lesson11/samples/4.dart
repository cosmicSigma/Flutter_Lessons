class ShortCodeException implements Exception{
  ShortCodeException(this.message);
  final String message;

}
class NumberException implements Exception{
  NumberException(this.message);
  final String message;

}

void validateLength(String code){
  if(code.length!=5){
    throw ShortCodeException('postal code must be equal to 5 characters!');
  }
}

void validateNumber(String code){
  if(!(int.tryParse(code)!=null)){
    throw NumberException("postal code must be a number");
  }
}


void validatePostalCode(String code){
  validateLength(code);
  validateNumber(code);
}

void main(){
  const postCode = "1235";

  try {
    validatePostalCode(postCode);
    print("post code is valid");
  } on ShortCodeException catch (e) {
    print(e.message);
  }
  on NumberException catch (e) {
    print(e.message);
  }
}