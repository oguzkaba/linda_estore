enum ApiUrlEnum {
  auth('auth/'),
  authLogin('auth/login/'),
  user('user/'),
  users('users/'),
  products('products/'),
  category('products/category/'),
  categories('products/categories/'),
  carts('carts/'),
  cartsUser('carts/user/');

  final String url;
  const ApiUrlEnum(this.url);
}
