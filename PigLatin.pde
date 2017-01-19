import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));

	}
}
public void draw()
{
}



public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
		for(int i =0; sWord.length(); i++){
			if(sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("e")||sWord.substring(i,i+1).equals("i")||sWord.substring(i,i+1).equals("o")||sWord.substring(i,i+1).equals("u"))
			{
				return i;

			}	

 		 return -1;
		
	}
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	//For words that are all consonants, simply add "ay" to the end of the word. Thus, "try" becomes "tryay".
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}

	//For words that begin with vowels, simply add "way" to the end of the word. Thus, "a" becomes "away"; "at" becomes "atway"; "ermine" becomes "ermineway."
	if(findFirstVowel(sWord) == 0)
	{

		return sWord + "way";
	}

	//For words beginning with "qu," move the "qu" to the end of the word and add ay. Thus "question" becomes "estionquay".
	if(sWord.substring(0.2).equals("qu")){
		//move the "qu" to the end of the word and add ay
		quay = sWord.substring(0,2); +"ay";
		leftoverword= sWord.substring(2,sWord.length());
		newWord= leftoverword + quay;

		
		return newWord; 

	}

	//For words that begin with consonants, move the leading consonant(s) to the end of the word and add "ay." Thus, "ball" becomes "allbay"; "button" becomes "uttonbay"; "star" becomes "arstay"; "three" becomes "eethray";
	if(findFirstVowel(sWord) > 0)
	{
		//move the leading consonant(s) to the end of the word
		leadCon = sWord.substring(0,findFirstVowel(sWord));
		leftoverword= sWord.substring(findFirstVowel(sWord),sWord.length());
	
		//and add "ay." 
		newword = leftoverword + leadCon + "ay";


		return newWord;

	}

		return "ERROR!";
	
}


















