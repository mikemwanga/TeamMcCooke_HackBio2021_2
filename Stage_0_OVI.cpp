///#####-HackBio-#####-HackBio-#####-HackBio-2021
///------Trisad Arman Ovi------
///------HackBio Bioinformatics Internship2021------
///------TeamMcCooke_HackBio2021------
///------programming languages C++ ------

#include<bits/stdc++.h>
using namespace std;
int hammingDist(char *str1, char *str2)
{
	int i = 0, count = 0;
	while (str1[i] != '\0')
	{
		if (str1[i] != str2[i])
			count++;
		i++;
	}
	return count;
}

int main()
{
	//Name:
	cout<<"TRISAD ARMAN OVI"<<endl;
	
    //E-mail:
    cout<<"ta872068@student.nitw.ac.in"<<endl;
 
    //@Slack_Username:
    cout<<"@OVI "<<endl;

    //Biostack: 
    cout<<"Drug Development"<<endl;
    
    //@Twitter_Username:
    cout<<"@ovi_trisad"<<endl;
    
    //Hamming_Distance:
    char str1[] = "@OVI";
    
	char str2[] = "@ovi_trisad";
    
    cout << hammingDist (str1, str2);

	return 0;
}
  
    
	
    
