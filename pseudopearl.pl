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
	die "nUnable to create $OUTPUT";
}
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
 print OUTPUT "print \"\\n\"\;";
 }
 $iterLine = "yes";
# last if $argList[$i] eq "\n";
 }
 }



if ( $var1 = /Input/){
$_ =~ s/$_/\$$var2 = <STDIN>\n/g;

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



close INPUT;
close OUTPUT;