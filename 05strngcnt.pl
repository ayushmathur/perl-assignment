sub input 
{
    print "Enter the string\n";
    $str=<>;
    chomp($str);
    print "Enter the word to be counted in the string\n";
    $word=<>;
    chomp($word);
}

sub counter
{
    $count=0;
    @strarr=split(' ', $str); #Converting the string into array of individual words.
    foreach $n(@strarr)
    {
        if($n eq $word )
        {
            $count++;
        }
    }
    print "$word is repeated $count times\n";
}
input;
counter;