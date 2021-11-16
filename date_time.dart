void main(){

// Get the current date and time.
  var now = DateTime.now();
  print(now);

// Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000
  print(y2k);

// Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000
  print(y2k);

}
