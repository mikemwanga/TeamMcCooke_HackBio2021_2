class HackBio 
{
static int hammingDist(String str1, String str2)
{
    int i = 0, count = 0;
    while (i < str1.length())
    {
        if (str1.charAt(i) != str2.charAt(i))
           count++;
        i++;
    }
    return count;
}
 

public static void main (String[] args)
{
     String str1 = "ApurvaaGo";
     String str2 = "happyappy";
    
     System.out.println("Name: Apurva Gosavi");      
     System.out.println("EmailId: gosaviapurva@yahoo.in"); 
     System.out.println("Username: @Apurva"); 
     System.out.println("Biostack: Genomics ");
     System.out.println("Hamming distance between slack and twitter username: " +hammingDist (str1, str2));
}
}
