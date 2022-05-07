void main(){
  const pizzaPrices = {
    'margherita':5.5,
    'pepperoni' :7.5,
    'onion':6.5,
    'tomato':9.5,
    'simple':3.5,
  };
  const order = [
    'margherita',
    'pepperoni',
    'tomato'
  ];
  var total = 0.0;
  for (var item in order){
    final price = pizzaPrices[item];
    if (price!=null){
      total += price;
    }
  }
  print('Total: $total');
}
