public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{

  for(int s = word.length(); s < word.length()-1; s--)
    {
      String z = "";
      z = z + word.substring(s-1,s);
         if(z == word){
               return true; 
         }

    }
  return false;
}

