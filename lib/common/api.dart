// ignore_for_file: constant_identifier_names

class ApiConfig {
  // static const BASE_URL = 'https://1d01-110-39-9-131.ngrok-free.app';
  static const BASE_URL = 'https://api.sublimecarecloud.com';

  static String imageBaseAdress =
      'https://app.sublimegroceria.com/appimages/assets/';

  static const String apikey =
      "M24YmaytTpnH0XvYBItY8wRNxvK2+qa5Q+h0sCP4ldHF+01CMT0g9o+LUkyxndr2Sso4bRjRJyy5UZVYuyYbGb5tR1bDW83TH/XBZFw8K7gl3wtKiMEjCnxpSQsiP/wkP3XZLP1TTVgAFgpO7Ynp9SSBrDTfzgK6+aUBnJl/R/5csXIGUXYAlelH80ZRb2xe/u1YOj2UxsmcIOAnh78679nv4lisb8nsMp2Cg5AJWwqrkUsV+EVEZFdCqnlrNLOkyygIID+hx2LS87GWUFYuWf4HmQmLea0R+M47s4s0hISVMLk1KxOehTijQlj9jdZKVd/Q88+QUn+VQqcmP+miHTgHONrCnmmltUPJVyv6XZDCY5GIQ+A5SPtEdKuv8m5i5imSZK3cxUOJukLgZFx1F595PMXVZ2iRkIprozTYlhMyElR6ryz9g2QjE+ik+mnNJFG50T8pTQvIM4WGkwqOh/4MIBmREkasGUZamBOR8pCWrVRAKyZxksOj3fOA19sRzIe8GHV9+/pTlc/KKhuSJIZ3zurK16eR0/HC+DRlW5kbFyuFsVZqCgmp6+xnoy++P1GwHtVZAAoegwwfRBQuIJnx02N5bZy4UmtHuSBMTKc=";

  // Authentication
  // static const LOGIN = '$BASE_URL/users/login';
  static const REGISTER = '$BASE_URL/users/register';
  static const RELIGION = '$BASE_URL/Religion/ListReligion';
  static const LOGIN = '$BASE_URL/Auth/login';
  //GroceryItemsEndPoint
  static const SGITEMS = '$BASE_URL/groceryitems/list';
  static const TOP5ITEMS = '$BASE_URL/groceryitems/Top5Items';
  //GroceryList(viewbyid)EndPoint
  static const GLIST = '$BASE_URL/grocerylists/viewbyuser';
  static const GRECIPES = '$BASE_URL/recipes/list';
  static const GLISTPOST = '$BASE_URL/grocerylists/add';
  // grocerylists/viewbyuserid

  // static const GLIST = '$BASE_URL/grocerylists/list';
}
