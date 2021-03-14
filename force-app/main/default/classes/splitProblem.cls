public inherited sharing class splitProblem 
{
    public static map<String, Integer> getWords(String inpWord) 
    {

        // create map for binding words and counter or number of occurance

        Map<String, Integer> counterWord = new Map<String, Integer>();
        /* 
        spliting word by white space -> .split('\\s+') 
        \\s - matches single whitespace character.
        \\s+ - matches sequence of one or more whitespace characters
        using lowecase to be safe from case sensitive data 
        */
        for(String word: inpWord.toLowerCase().split('\\s+')) 
        {
            // 1st we will find that word is present in map or not
            Integer counter = counterWord.get(word);
            // if word is not presrnt in map
            if(counter == null) 
            {
                counter = 0;
            }
            // if word is already there
            counterWord.put(word, counter+1);
        }
        for(String s: counterWord.keySet())
        {
            // printing value 
            System.debug('Key : '+ s + ' value : '+counterWord.get(s) );
        }

        return counterWord;        
    }
}