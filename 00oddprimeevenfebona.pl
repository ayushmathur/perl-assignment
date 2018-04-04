sub prime($)
{
    $flag=0;
    if($_ == 1)
    {
        return x;
    }
    else
    {
        for($i=2;$i<=($_-1);$i++)
        {
            if($_ % $i == 0)
            {
                $flag=1;
                last;
            }
        }
    }
    if($flag==0)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

sub febo($)
{
    $feb[0]=0;
    $feb[1]=1;
    for($i=2;$i<=$_;$i++)
    {
        $feb[$i]=$feb[($i-1)]+$feb[($i-2)];
    }
    return $feb[$_];
}

sub mainfun(@)
{
    foreach(@_)
    {
        if ($_ % 2 == 0)
        {
            #Even number
            #call function to find the febonacchi number at this position
            push (@answer,febo($_));
        }
        else
        {
            #odd number
            #call function to check if its a prime number
            push (@answer,prime($_));
        }
    }
    foreach(@answer)
    {
        print "$_ ";
    }
    print "\n";
}

sub input 
{
    print "Enter 10 numbers\n";
    for ($i=0;$i<10;$i++)
    {
        chomp($numbers[$i]=<>);
    }
    mainfun(@numbers);
}
input;