sub initialize
{
    %useDetails= (frank=>10000, lucy=>20000, anna=>30000, lucifer=>100000, thanos=>300);
}

sub adduser
{
    $flag=0;
    if ($flag==0)
    {
        print "User is not in the list. Please enter its salary to add it to the list : ";
        $sal=<>;
        $useDetails{$user}=$sal;
        print "New user details added successfuly\n";
        #print $useDetails{$user};
    }
}

sub check 
{
    if(exists $useDetails{$user})
    {        
        print "The salary of $user is $useDetails{$user}\n";
        $flag=1;    
    }
    else
    {
        adduser;
    }
}

sub input 
{
    print "Enter the user name you want to know details about : ";
    $user=<>;
    chomp($user);
    while ($user =~ m/^[0-9]/ || $user =~ m/\s/)
    {
        print "Entered user details do not meet parameters.\nPlease remmove any white spaces and make sure name starts with an alphabet\n";
        print "Enter correct username again : ";
        $user=<>;
        chomp($user);
    }
    #chomp($user);
    $user=lc($user);
    check;
}
initialize;
input;