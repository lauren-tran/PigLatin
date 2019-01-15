public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
	if (sWord.length() > 0)
		for (int j = 0; j < sWord.length(); j++)
			if (sWord.substring(j,j+1).equals("a")||sWord.substring(j,j+1).equals("e")||sWord.substring(j,j+1).equals("i")||sWord.substring(j,j+1).equals("o")||sWord.substring(j,j+1).equals("u"))
				return j;
	return -1;
}

public String pigLatin(String sWord){
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0) {
		return sWord + "way";
	}
	else if (sWord.substring(0,2).equals("qu")){
		return sWord.substring(2, sWord.length()) + "quay";
	}
	else {
		return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
}