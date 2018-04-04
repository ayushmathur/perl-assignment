sub sum
{
    $sum=0;
    foreach(@_)
    {
        $sum=$sum+$_;
    }
    return $sum;
}

sub findmax 
{
    $max=0;
    foreach(@_)
    {
        if($_ > $max)
        {
            $max=$_;
        }
    }
    return $max;
}

sub findmin 
{
    @numbers=@_;
    $min=$numbers[0];
    foreach(@numbers)
    {
        if($_ < $min)
        {
            $min=$_;
        }
    }
    return $min;
}

sub deleteprime
{
    foreach(@_)
    {
        if($_ =~ m/[1,0]/)
        {
            push(@finallist,$_);
        }
        elsif($_ == 2)
        {
            next;
        }
        else
        {
            for($i=2;$i<=($_-1);$i++)
            {
                if($_ % $i == 0)
                {
                    push(@finallist,$_);
                    last;
                }
            }
        }
    }
    return @finallist;
}

sub search 
{
    ($num_ref,$arr_ref)=@_;
    $number=${$num_ref};
    @array=@{$arr_ref};
    foreach(@array)
    {
        if($_ == $number)
        {
            return 1;
        }
    }
}

sub menu 
{
    @usernumbers=@_;
    print "Enter your choice:\n1. Find sum of the numbers\n2. Find max\n3. Find min\n4. Sort\n5. Delete prime numbers\n6. Search a number\n7. Exit\n";
    $choice=<>;
    if($choice==1)
    {
        $sum=sum(@usernumbers);
        print "Sum of the entered numbers is: $sum\n\n";
        menu(@usernumbers);
    }
    elsif($choice==2)
    {
        $max=findmax(@usernumbers);
        print "Max number out of entered numbers is: $max\n\n";
        menu(@usernumbers);
    }
    elsif($choice==3)
    {
        $min=findmin(@usernumbers);
        print "Min number out of entered numbers is: $min\n\n";
        menu(@usernumbers);
    }
    elsif($choice==4)
    {
        print "Sorted list: ";
        foreach(sort(@usernumbers))
        {
            print "$_ ";
        }
        print "\n\n";
        menu(@usernumbers);
    }
    elsif($choice==5)
    {
        print "List with deleted primes: ";
        foreach(deleteprime(@usernumbers))
        {
            print "$_ ";
        }
        print "\n\n";
        menu(@usernumbers);
    }
    elsif($choice==6)
    {
        print "Enter the number you want to search: ";
        $number=<>;
        if(search(\$number,\@usernumbers))
        {
            print "Number Found\n\n";
        }
        else
        {
            print "Number not found\n\n";
        }
        menu(@usernumbers);
    }
    else
    {
        exit;
    }
}

print "Enter list of all numbers seperated by a space and press enter\n";
chomp($input=<>);
@usernumbers=split(' ',$input, length($input));
menu(@usernumbers);

