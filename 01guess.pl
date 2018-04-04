sub input 
{
    print "Enter the number you want your friend to guess : ";
    $num=<>;
    system 'clear';
}

sub guess
{
    print "This is a jackpot game, guess a number, if you are right you will get a reward.\nEnter a number: ";
    $guessno=<>;
    if ($guessno =~/^[0-9]+$/)
    {
        if ($guessno==$num)
        {
            print "Congratulations, Your guess is correct, you won a Cat.\n";
        }
        elsif ($guessno > $num)
        {
            print "your guess was high, better luck next time\n";
        }
        elsif ($guessno < $num)
        {
            print "your guess was low, better luck next time\n";
        }
    }
    else
    {
        print "Are ye number nhi he!\n"
    }
}
input;
guess;