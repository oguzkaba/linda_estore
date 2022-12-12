enum CheckoutStateEnum {
  delivery(0),
  adress(1),
  payment(2),
  error(3),
  success(4);

  final int idx;
  const CheckoutStateEnum(this.idx);
}
