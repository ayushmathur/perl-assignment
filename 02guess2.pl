sub userin
{
    $guessno=<>;
}

sub input 
{
    print "Enter the number you want your friend to guess : ";
    $num=<>;
    system 'clear';
    print "This is a jackpot game, guess a number, if you are right you will get a reward.\nEnter a number: ";
    userin;
}

sub guesswork
{
    $flag=0;
    until ($flag == 1)
    {
        if ($guessno =~/^[0-9]+$/)
        {
            if ($guessno == $num)
            {
                print "Correct!\n";
                $flag=1;
            }
            elsif($guessno < $num)
            {
                print "The number is low. Try again\nEnter a number : ";
                $flag=0;
                userin;
            }
            elsif($guessno > $num)
            {
                print "The number us high. Try again\nEnter a number : ";
                $flag=0;
                userin;
            }
        }
        else
        {
            print "It is not a number. Try again\nEnter a number : ";
            $flag=0;
            userin;
        }
    }
}
input;
guesswork;