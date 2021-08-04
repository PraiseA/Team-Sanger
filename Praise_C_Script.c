// hamming distance calculation

#include <stdio.h>
#include <string.h>

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

// calculating hamming distance between slack and twitter username
// script printing my name, email, slack_username with @biostack, twitter_name and hamming_distance

int main()
{
    char str1[] = "Praise";
    char str2[] = "PR@I$E";
    
    strcpy(str1, "Praise");
    strcpy(str2, "PR@I$E");
    
    printf("Achinebiri Praise C,");
    printf("richpraise36@gmail.com,");
    printf("@Praise,Drug Development,");
    printf("@PR@I$E,");   
    printf("%o\n", hammingDist (str1, str2));
    
    return 0;
}
