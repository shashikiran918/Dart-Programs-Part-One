void main()
{
  int count = 1;

  while (count <= 10) {
    print("Shashi, you are inside loop $count");
    count++;

    if (count == 4) {
      break;
    }
  }
  print("Shashi, you are out of while loop");
}
