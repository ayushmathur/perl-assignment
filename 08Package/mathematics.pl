package mathematics;

#Function to add numbers in arrays.
#Can be given any number of arrays containing any amount of intiger numbers.
#Returns an array of sum of each row of 2d array.
sub add
{
    foreach(@_)
    {
        push(@dnumbers,[@{$_}]);
    }

    $length=0;
    for($x=0;$x<(scalar(@dnumbers));$x++)
    {
        if ($length<scalar(@{$dnumbers[$x]}))
        {
            $length=scalar(@{$dnumbers[$x]});
        }
    }

    for($i=0;$i<$length;$i++)
    {
        $dimsum=0;
        for($j=0;$j<(scalar(@dnumbers));$j++)
        {
            $dimsum=$dimsum+$dnumbers[$j][$i];
        }
        push (@sum,$dimsum);
    }
    return @sum;
}

sub minus
{
    ($ar1_ref,$ar2_ref)=@_;
    @ar1=@{$ar1_ref};
    @ar2=@{$ar2_ref};
    if (scalar(@ar1)>scalar(@ar2))
    {
        $length=scalar(@ar1);
    }
    else
    {
        $length=scalar(@ar2);
    }

    for($i=0;$i<$length;$i++)
    {
        $majorminus[$i]=$ar1[$i]-$ar2[$i];
    }
    return @majorminus;
}

sub sort 
{
    @sorted=sort(@numbers);
    return @sorted;
}

sub max 
{
    $maxnumber=0;
    foreach(@numbers)
    {
        if($_ > $max)
        {
            $maxnumber=$_;
        }
    }
    return $maxnumber;
}
return 1;