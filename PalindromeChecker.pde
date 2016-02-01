public void setup()
{
    String lines[] = loadStrings("palindromes.txt");
    println("there are " + lines.length + " lines");
    for (int i = 0; i < lines.length; i++)
    {
        if (palindrome(lines[i]) == true)
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
    String sGrammer = nogrammer(word);
    String sReverse = reverse(nogrammer(word));
    if (sGrammer.equalsIgnoreCase(sReverse))
    {
        return true;
    }


    return false;
}

public String reverse(String sWord)
{

    String x = new String();

    for (int s = sWord.length() - 1; s >= 0; s--)
    {
        x = x + sWord.substring(s, s + 1);

    }

    return x;
}


public String nogrammer(String sWord)
{
    String nogrammer ="";
    for (int i = 0; i < sWord.length(); i++)
    {
        if (!sWord.substring(i, i + 1).equals(" ") && !sWord.substring(i, i + 1).equals(",") && !sWord.substring(i, i + 1).equals("!") && !sWord.substring(i, i + 1).equals("'") && !sWord.substring(i, i + 1).equals("."))
            nogrammer = nogrammer + sWord.substring(i, i + 1);
    }
    return nogrammer;
}