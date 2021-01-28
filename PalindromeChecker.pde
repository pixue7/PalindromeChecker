public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for(int i=0; i < lines.length; i++) {
    if(palindrome(noCapitals(noSpaces(noSymbols(lines[i]))))==true){
      println(lines[i] + " IS a palindrome.");
    }
    else{
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word){
  if(word.equals(reverse(word)))
    return true;
  return false;
}
public String reverse(String str){
  String out = new String("");
  for (int i = str.length()-1; i >=0; i--){
    out += str.substring(i, i+1);
  }
  return out;
}
public String noSpaces(String sWord){
  String out, temp;
  out =  new String("");
  for (int i = 0; i < sWord.length(); i++){
    temp = sWord.substring(i,i+1);
    if (!temp.equals(" "))
      out += temp;
  }
  return out;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSymbols(String sString){
  String out= "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)))
      out += sString.substring(i,i+1);
  }
  return out;
}

