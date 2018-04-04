print "Enter the name of File 1 : ";
chomp($file1=<>);
open (f1,"$file1") or die "$!";
print "Enter the name of File 2 : ";
chomp($file2=<>);
open (f2,"$file2") or die "$!";

@arrf1=<f1>;
@arrf2=<f2>;
$len=0;
if (scalar(@arrf1)>scalar(@arrf2)) #Setting length of loop to compare lines
{
    $len=scalar(@arrf1);
}
else
{
    $len=scalar(@arrf2);
}


for($i=0;$i<$len;$i++)  #Loop to compare lines
{
    chomp($arrf1[$i]);
    chomp($arrf2[$i]);
    if($arrf1[$i] eq $arrf2[$i])
    {
        #Line is same. Nothing to do
        next;
    }
    else
    {
        #Line is not same. Initiating the procedure to compare that line
        @strarr1=split('',$arrf1[$i], length($arrf1[$i])); #Making array of charachters in string
        @strarr2=split('',$arrf2[$i], length($arrf2[$i]));

        $len2=0;
        if (scalar(@strarr1)>scalar(@strarr2))   #Setting length of loop to compare characters
        {
            $len2=scalar(@strarr1);
        }           
        else
        {
            $len2=scalar(@strarr2);
        }

        for($j=0;$j<$len2;$j++)    #Loop to compare characters
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
}
close(f1); 
close(f2); #Closed files