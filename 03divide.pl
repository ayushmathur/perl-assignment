sub input 
{
    print "Enter the Dividend : ";
    $dividend=<>;
    chomp($dividend);
    print "Enter the Divisor : ";
    $divisor=<>;
    chomp($divisor);
    if ($divisor == 0)
    {
        print "Error: Divisor can't be 0\n";
        exit;
    }
}

sub divide
{
    if ($dividend == 0 || $divisor == 1)
    {
        print "$dividend/$divisor = $dividend\n";
    }
    else
    {
        $ans=$dividend/$divisor;
        print "$dividend/$divisor = $ans\n";
    }
}
input;
divide;