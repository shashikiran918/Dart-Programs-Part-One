void main()
{
  int count = 0;

  while (count <= 10) {
    count++;

    if (count == 4) {
      print("Number 4 is skipped");
      continue;
    }

    print("Shashi, you are inside loop $count");
  }

  print("Shashi, you are out of while loop");
}
