#!/usr/bin/perl


#Written in perl

#let $s1 and $s2 be the slack and twitter usernames respectively
$s1 = "\@Bolu";

$s2 = "\@bb_linux";

# Return the Edit distance) between two strings

# This is a measure of similarity between two strings, denoted here by s1 and s2. 
# The distance is the number of deletions, insertions or substitutions required to transform s1 into
# s2. The greater the distance, the more different the strings are.

# The algorithm employs a promimity matrix, which denotes the distances between substrings of the two given strings.


sub levenshtein
{
    # $s1 and $s2 are the two strings
    # $len1 and $len2 are their respective lengths
    
    my ($len1, $len2) = (length $s1, length $s2);

    # If one of the strings is empty, the distance is the length
    # of the other string
    
    return $len2 if ($len1 == 0);
    return $len1 if ($len2 == 0);

    my %mat;

    # Init the distance matrix
    
    # The first row to 0..$len1
    # The first column to 0..$len2
    # The rest to 0
    
    # The first row and column are initialized so to denote distance
    # from the empty string
    
    for (my $i = 0; $i <= $len1; ++$i)
    {
        for (my $j = 0; $j <= $len2; ++$j)
        {
            $mat{$i}{$j} = 0;
            $mat{0}{$j} = $j;
        }

        $mat{$i}{0} = $i;
    }

    # Some char-by-char processing is ahead, so prepare
    # array of chars from the strings
    
    my @ar1 = split(//, $s1);
    my @ar2 = split(//, $s2);

    for (my $i = 1; $i <= $len1; ++$i)
    {
        for (my $j = 1; $j <= $len2; ++$j)
        {
            # Set the cost to 1 iff the ith char of $s1
            # equals the jth of $s2
             
            # Denotes a substitution cost. When the char are equal
            # there is no need to substitute, so the cost is 0
            
            my $cost = ($ar1[$i-1] eq $ar2[$j-1]) ? 0 : 1;

            # Cell $mat{$i}{$j} equals the minimum of:
            
            # - The cell immediately above plus 1
            # - The cell immediately to the left plus 1
            # - The cell diagonally above and to the left + the cost
            
            # We can either insert a new char, delete a char of
            # substitute an existing char (with an associated cost)
            
            $mat{$i}{$j} = min([$mat{$i-1}{$j} + 1,
                                $mat{$i}{$j-1} + 1,
                                $mat{$i-1}{$j-1} + $cost]);
        }
    }

    # Finally, the distance equals the rightmost bottom cell
    # of the matrix
    #
    # Note that $mat{$x}{$y} denotes the distance between the 
    # substrings 1..$x and 1..$y
    
    return $mat{$len1}{$len2};
}

# minimal element of a list

sub min
{
    my @list = @{$_[0]};
    my $min = $list[0];

    foreach my $i (@list)
    {
        $min = $i if ($i < $min);
    }

    return $min;
}


$distance = levenshtein($s1, $s2);


#Print each item
print "Boluwatife ADEWALE,boluadeleye03\@gmail.com," . $s1 . ",Transcriptomics," . $s2 . "," . $distance . "\n";
