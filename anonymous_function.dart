void main(){

  final drinks = ['water', 'juice', 'milk'];

  final bigDrinks = drinks.map(

          (drink) => drink.toUpperCase()
  );

  print(bigDrinks);

}