use strict;

my $var1;
my $var2;
my $var3;
my $varSign = "my \$";
my $wordVar;
my $iterLine = "no";
my @arrayOfUserVars;

open (INPUT, "data.txt");

my $OUTPUT = "datawrite.pl";
unless(open OUTPUT, '>'.$OUTPUT) {
	# Die with error message 
	# if we can't open it.
	die "Unable to create $OUTPUT";
}

print OUTPUT "my \$isWaitingInput = \"no\";";
print OUTPUT "local (\$buffer, \@pairs, \$pair, \$name, \$value, \$FORM);

    \$ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;
    \if (\$ENV{'REQUEST_METHOD'} eq \"POST\")
    
    
    {
        read(STDIN, \$buffer, \$ENV{'CONTENT_LENGTH'});
    }else {
	\$buffer = \$ENV{'QUERY_STRING'};
    }

    \@pairs = split(/&/, \$buffer);
    foreach \$pair (\@pairs)
    {
	(\$name, \$value) = split(/=/, \$pair);
	\$value =~ tr/+/ /;
	\$value =~ s/%(..)/pack(\"C\", hex(\$1))/eg;
	\$FORM{\$name} = \$value;}\n";


my $htmlStandard1 = "\"Content-Type: text/html

<HTML>
<HEAD>
<TITLE>Hello World</TITLE>
</HEAD>
<BODY><p><FORM action=\\\"datawrite.pl\\\" method=\\\"POST\\\">\";\n";
print OUTPUT "print ".$htmlStandard1;





print OUTPUT "main();\n";



while (<INPUT>) {

#chomp;

 ($var1, $var2, $var3) = split(" ");
 
 
 if ($var1 = /Set/){
 my @argList = split(/\s/, $_);
for (my $i = 1;$i < @argList; ++$i){  
 
 
 
 my $target_word = "\$".@argList[$i] ." ";
 $target_word =~ s/\$=/\=/g;
 $target_word =~ s/\$\*/\*/g;
 $target_word =~ s/\$\+/\+/g;
 $target_word =~ s/\$\-/\-/g;
 $target_word =~ s/\$\\/\\/g;
 print OUTPUT $target_word;
 if ($i eq @argList - 1){
 print OUTPUT "\;\n";
 }
 $iterLine = "yes";
# last if $argList[$i] eq "\n";
 
 }

 }
 
  if ($var1 = /Display/){
  print OUTPUT "print";
 my @argList = split(" ");
for (my $i = 1;$i < @argList; ++$i){  


 
if (grep /@argList[$i]/, @arrayOfUserVars) {

     print OUTPUT "\$".@argList[$i];

}else {

 print OUTPUT @argList[$i]." ";

 }
 


 if ($i eq @argList - 1){
 print OUTPUT "\;\n";
 print OUTPUT "print \"<br>\"\;\n";
 }
 $iterLine = "yes";
# last if $argList[$i] eq "\n";
 }
 }



if ( $var1 = /Input/){
print OUTPUT "\$".$var2." = \$FORM{".$var2."postVar};\n";
print OUTPUT "if (\$isWaitingInput eq \"no\"){";

my $htmlChunk = "if(\$".$var2." eq /0/) {


print \"<input type=\\\"text\\\" name=\\\"".$var2."postVar\\\">\";
\$isWaitingInput = \"yes\";

endHTML();
} else {
print \"<input type=\\\"hidden\\\" name=\\\"".$var2."postVar\\\" value=\".\$".$var2.".\">\";
print \$".$var2.";
}";
print OUTPUT "print \"<br>\";\n".$htmlChunk."print \"<br>\";\n";

#$_ =~ s/$_/\$$var2 = <STDIN>\n/g;
$iterLine = "yes";


print OUTPUT "1;";
print OUTPUT "}";
}




if ($var1 = /Declare/){
#print $var3;
$_ = $varSign . $var3 . "\n";
@arrayOfUserVars = @arrayOfUserVars .$var3;
#print @arrayOfUserVars;
}

if ($var1 = /Module/){
$_ =~ s/\)/\){/g;
}

if ($var1 = /End/){
$_ = "}";
}


    

$_ =~ s/Module/sub/g;

$_ =~ s/Display/print/g;
#$_ =~ s/Declare/my "$"/g;
$_ =~ s/Call//g;
$_ =~ s/Set//g;



if (<input> == /^$/){
if (<input> != /{.*/){
last:
}else {
$_ =~ s/\n/;\n/g;
}
}


if ($iterLine eq "yes"){
$iterLine = "no"; 

} else {
  print OUTPUT $_; 
}

  }
  
  
print OUTPUT "sub endHTML(){ 
 
 my \$htmlStandard2 = qq{
</FORM>
</p>
</body>
</html>};\n";
print OUTPUT "print \"<input type=\\\"submit\\\" value=\\\"Submit\\\">\";";

print OUTPUT "print \$htmlStandard2;";

print OUTPUT "close INPUT;";
print OUTPUT "close OUTPUT;";
print OUTPUT"exit;}";
close INPUT;
close OUTPUT;