


		#include"iostream"

		using namespace std;

		void ChangeIt(char Text[])
		{
                    int K;
		    for (K = 1; Text[K] != '\0'; K++)
		    {
			if (Text[K] >= 'b' && Text[K] <= 'd') 
			    Text[K-1] = 'e';
			else 
			    Text[K-1] = Text[K];
		    }
                    Text[K-1] = 't';
		}

		int main()
		{
		    char oldText[] = "0grca";
		    ChangeIt(oldText);
		    cout <<  oldText << endl;
		}

