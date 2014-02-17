my $isWaitingInput = "no";local ($buffer, @pairs, $pair, $name, $value, $FORM);

    $ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;
    if ($ENV{'REQUEST_METHOD'} eq "POST")
    
    
    {
        read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
    }else {
	$buffer = $ENV{'QUERY_STRING'};
    }

    @pairs = split(/&/, $buffer);
    foreach $pair (@pairs)
    {
	($name, $value) = split(/=/, $pair);
	$value =~ tr/+/ /;
	$value =~ s/%(..)/pack("C", hex($1))/eg;
	$FORM{$name} = $value;}
print "Content-Type: text/html

<HTML>
<HEAD>
<TITLE>Hello World</TITLE>
</HEAD>
<BODY><p><FORM action=\"datawrite.pl\" method=\"POST\">";
main();
sub main(){
 calculatePay();
print"Pick up the check at payroll" ;
print "<br>";
}
sub calculatePay(){
my $hoursWorked;
my $hoursPayRate;
my $totalPay;

print"enter the Number of hours worked" ;
print "<br>";
$hoursWorked = $FORM{hoursWorkedpostVar};
if ($isWaitingInput eq "no"){print "<br>";
if($hoursWorked eq /0/) {


print "<input type=\"text\" name=\"hoursWorkedpostVar\">";
$isWaitingInput = "yes";

endHTML();
} else {
print "<input type=\"hidden\" name=\"hoursWorkedpostVar\" value=".$hoursWorked.">";
print $hoursWorked;
}print "<br>";
1;}print"Enter hourly pay rate" ;
print "<br>";
$hourlyPayRate = $FORM{hourlyPayRatepostVar};
if ($isWaitingInput eq "no"){print "<br>";
if($hourlyPayRate eq /0/) {


print "<input type=\"text\" name=\"hourlyPayRatepostVar\">";
$isWaitingInput = "yes";

endHTML();
} else {
print "<input type=\"hidden\" name=\"hourlyPayRatepostVar\" value=".$hourlyPayRate.">";
print $hourlyPayRate;
}print "<br>";
1;}$totalPay = $hoursWorked * $hourlyPayRate ;
print"Total pay is: ", $totalPay;
print "<br>";
}sub endHTML(){ 
 
 my $htmlStandard2 = qq{
</FORM>
</p>
</body>
</html>};
print "<input type=\"submit\" value=\"Submit\">";print $htmlStandard2;close INPUT;close OUTPUT;exit;}