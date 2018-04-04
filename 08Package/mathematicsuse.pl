require 'mathematics.pl';
print "Enter First list seperated by a space and press enter\n";
chomp($input=<>);
@a=split(' ',$input, length($input));
print "Enter second list seperated by a space and press enter\n";
chomp($input=<>);
@b=split(' ',$input, length($input));

$,=" ";

print "Addition of the two arrays is : ";
@c=mathematics::add(\@a,\@b);
print @c;
print "\n";

print "Difference of the two arrays is : ";
@d=mathematics::minus(\@a,\@b);
print @d;
print "\n";

print "Max number : ";
$max=mathematics::findmax(\@c,\@d);
print $max;
print "\n";

print "Min number : ";
$max=mathematics::findmin(\@c,\@d);
print $max;
print "\n";

print "Sorted array is : ";
@e=mathematics::sorting(\@c,\@d);
print @e;
print "\n";