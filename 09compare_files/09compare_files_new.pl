sub findlength($$)          #Function to find length of loop
{   
    ($ar1_ref,$ar2_ref)=@_;
    @ar1=@{$ar1_ref};
    @ar2=@{$ar2_ref};
    $length=0;
    if (scalar(@ar1)>scalar(@ar2))
    {
        $length=scalar(@ar1);
    }
    else
    {
        $length=scalar(@ar2);
    }
    return $length;
}

print "Enter the name of File 1 : ";
chomp($file1=<>);
open (f1,"$file1") or die "$!";
print "Enter the name of File 2 : ";
chomp($file2=<>);
open (f2,"$file2") or die "$!";
@arrf1=<f1>;
@arrf2=<f2>;

for($i=0;$i<findlength(\@arrf1,\@arrf2);$i++)  #Loop to compare lines
{
    @strarr1=split('',$arrf1[$i], length($arrf1[$i])); #Making array of charachters in string
    @strarr2=split('',$arrf2[$i], length($arrf2[$i]));

    for($j=0;$j<findlength(\@strarr1,\@strarr2);$j++)    #Loop to compare characters
    {
        chomp($strarr1[$j]);
        chomp($strarr2[$j]);
        if($strarr1[$j] eq $strarr2[$j])
        {
            next;  #same character. Nothing to do
        }
        else
        {
            print "There is a difference at line ".($i+1)."\n";   # Display line number where there is a difference.
            print "byte no ".($j+1)."\n$file1:  $strarr1[$j]\n$file2:  $strarr2[$j]\n";   #Displaying difference 
        }
    }
}
close(f1);
close(f2); #Closed Files