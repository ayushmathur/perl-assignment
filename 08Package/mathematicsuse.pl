require 'mathematics.pl';
print "Enter First list seperated by a space and press enter\n";
chomp($input=<>);
@list1=split(' ',$input, length($input));
print "Enter second list seperated by a space and press enter\n";
chomp($input=<>);
@list2=split(' ',$input, length($input));
print "Enter third list seperated by a space and press enter\n";
chomp($input=<>);
@list3=split(' ',$input, length($input));
@sum=mathematics::minus(\@list1,\@list2);
foreach(@sum)
{
    print "$_ ";
}
print "\n";