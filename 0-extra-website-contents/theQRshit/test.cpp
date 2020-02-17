


		#include"iostream"

		using namespace std;

		void ChangeIt(char Text[])
		{
		    for (int K = 1; Text[K] != '\0'; K++)
		    {
			if (Text[K] >= 'b' && Text[K] <= 'd') 
			    Text[K-1] = 'e';
			else if (Text[K] == '!') 
			    Text[K-1] = 't';
			else 
			    Text[K-1] = Text[K];
		    }
		}

		int main()
		{
		    char oldText[] = "0Grca!";
		    ChangeIt(oldText);
		    cout <<  oldText << endl;
		}

