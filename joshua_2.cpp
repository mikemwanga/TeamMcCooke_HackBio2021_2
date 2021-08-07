#include<bits/stdc++.h>
using namespace std;
int hammingDist(char *str1, char *str2)
{
    int i = 0, count = 0;
   while (str1[i] != '\0')
    {
        if (str1[i] !=str2[i])
                count++;

            i++;
    }
}
int main()
{
     /* Name */
    cout << "Fakorede Joshua Adeleye" << endl;

    /* Email*/
      cout << "Fakorede19@gmail.com" << endl;

    /*Slack_Username*/
        cout << "@Joshua0" << endl;

    /* My biostack */
      cout << "Drug Development " << endl;

    /* Twitter_Handle*/
      cout << "@leyeleye0" << endl;

   
        /* hamming distance*/
       char str1[] ="@joshua0";

        char str2[] = "@leyeleye0";

        cout << hammingDist (str1, str2);



    return 0;
}



