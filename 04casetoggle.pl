sub input 
{
    print "Enter the string\n";
    $str=<>;
    @strarr=split('', $str, length($str));
   
}

sub casetoggle
{ print "Behold The power of Cases\n";
    foreach $n(@strarr)
    {
        if($n=~/[A-Z]/)
        {
            print lc("$n");
        }
        else
        {
            print uc("$n");
        }
    }
}
input;
casetoggle;