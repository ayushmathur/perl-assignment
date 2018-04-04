package mathematics;
#Function to remove repeted elements from an array
sub unique
{
    my @uniqueones;
    my @nonunique=@_;
    my $cnt=1;
    my $len=(scalar(@nonunique));
    foreach(@nonunique)
    {
        my $flag=0;
        for($i=($len-1);$i>=$cnt;$i--)
        {
            if($_ == $nonunique[$i])
            {
                $flag = 1;
                last;
            }
        }
        if($flag == 0)
        {
            push(@uniqueones,$_);
        }
        $cnt=($cnt+1);
    }
    return @uniqueones;
}

#Function to add numbers in arrays.
#Can be given any number of arrays containing any amount of intiger numbers.
#Returns an array of sum of each row of 2d array.
sub add
{
    my @input=@_;
    foreach(@input)
    {
        push(@dnumbers,[@{$_}]);
    }

    my $length=0;
    for($x=0;$x<(scalar(@dnumbers));$x++)
    {
        if ($length<scalar(@{$dnumbers[$x]}))
        {
            $length=scalar(@{$dnumbers[$x]});
        }
    }

    for($i=0;$i<$length;$i++)
    {
        my $dimsum=0;
        for($j=0;$j<(scalar(@dnumbers));$j++)
        {
            $dimsum=$dimsum+$dnumbers[$j][$i];
        }
        push (@sum,$dimsum);
    }
    return @sum;
}
#Function to subtract numbers in two arrays.
#Can be given only two number of arrays containing any amount of intiger numbers.
#Returns the difference of second array from first array.
sub minus
{
    my ($ar1_ref,$ar2_ref)=@_;
    my @ar1=@{$ar1_ref};
    my @ar2=@{$ar2_ref};
    my $length=0;
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

#Funtion to sort two arrays
#It intersect two arrays and then returns its sorted version
sub sorting 
{
    my @input=@_;
    foreach(@input)
    {
        push(@unsorted,@{$_});
    }
    my @sorted = (sort { $a <=> $b } mathematics::unique(@unsorted) );
    return @sorted;
}

#Function to find Max out of given all arrays.
sub findmax 
{
    my @input=@_;
    foreach(@input)
    {
        push(@n,@{$_});
    }
    $max=0;
    foreach(mathematics::unique(@n))
    {
        if($_ > $max)
        {
            $max=$_;
        }
    }
    return $max;
}

#Function to find out Min out of all given arrays.
sub findmin 
{
    my @input=@_;
    my @n;
    foreach(@input)
    {
        push(@n,@{$_});
    }
    my @numbers=mathematics::unique(@n);
    my $min=$numbers[0];
    foreach(@numbers)
    {
        if($_ < $min)
        {
            $min=$_;
        }
    }
    return $min;
}
return 1;