enum CheckoutStateEnum {
  delivery(0),
  adress(1),
  payment(2),
  success(3),
  error(4);

  final int idx;
  const CheckoutStateEnum(this.idx);
}
