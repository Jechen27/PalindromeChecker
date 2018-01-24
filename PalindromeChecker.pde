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
  word = word.toLowerCase();
  String temp = new String();
  for (int i=0;i<word.length();i++)
  if (word.charAt(i)!=' ' && Character.isLetter(word.charAt(i)))
  temp += word.substring(i,i+1);
  word = temp;
  return (word.equals(reverse(word)));
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i>0; i--)
    sNew += str.substring(i-1,i);
    return sNew;
}