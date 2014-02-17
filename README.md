PARSEudo-Code-Compiler
======================

Generates perl console and html form webapps from my college Pseudo Code class standards


<img src="http://imagegarageapp.com/files/parseudo.png" width="%80">

(2/17/2014) This perl code demonstrates a quick two day hack of code and by "hack" I mean sprinting through it 
for functionality while not worrying about how it looks...even though each script is only 100-200 lines it 
can get rough in there :)

The purpose... The purpose was to make my College pseudocode and algorithms class pseudocode that we use become functional
and to have a way to test syntax and functionality to see if our non working programs would actually work. Which also 
means this is a form of a very simple compiler. When you write C the compiler takes the syntax/words you write and grabs 
turns that into a bunch of less readable assembly instructions.

# COMMAND LINE VERSION INFO

The perl script named pseudopearl.pl I wrote grabs the easy
to write pseudocode in data.tx and outputs a perl script named datawrite.pl all of which have to be in the same directory.
From there you will now have a functioning perl script to run from your perl enabled command line.

# PERL TO WEB HTML FORM APP VERSION INFO

Besides the command line version you can also run the htmlparseudo2.pl from your command line if you have data.txt with
pseudocode in it and that will output datawrite.pl just like the other script except this is bit more advanced. This file
"datawrite.pl" can be placed on a webserver and will output and stop and wait when input is requested. After typing some
input into the text box you can hit submit and the program will send the variable back to itself and now now ask you for it 
and now stop at next input or do whatever comes next in the program i.e. some math, print output, etc..

# Videos

high quality for any non mobile device can be seen at <a href="http://imagegarageapp.com/files/resources/parseudosmall.mov">http://imagegarageapp.com/files/resources/parseudosmall.mov</a>

mobile phone and slow connection can be seen at a href="http://imagegarageapp.com/files/parseudosmall.m4v">http://imagegarageapp.com/files/parseudosmall.m4v</a>


# What is the syntax for Parseudo code?

Simply take a look at data.txt for now the first words of each line are the important part, always start with Module Main()
and first words are also case sensitive. so far they are 

Module - creating the name/start of a function;
Call - call a function this is followed by the functions name.

End Module - this is the end of function which is typically "}" bracket in most other languages.

Display - this is typically a print syntax in perl or printf in c but it will output your text in quotes i.e. Display "hello world".

Declare - this says you are creating a variable your variable name should be third word and type should be second word i.e. Declare string thisString.

Input - this is followed by a previously declared variable name that you want to set user input into.

Set - set a value of a variable - example: set thisVariable = 5 + 4

# issues / bugs/ things to do or fix

Well the date of me writing this is feb 17 2014 so before I move on I would like to pretty up the code into clean and readable
function calls to hide all the nasty string parsing thrown at you when you open the code. 

The web html forms the second version generates currently do not validate input it won't really throw a crazy error but 
it's not safe for public apps so mostly for students or teachers testing pseudocode applications but one day who knows maybe
a easier way for average joes and non programmers to create custom forms.

Some of the photos or videos I have here show old output during testing so if you see something funky in their that would 
generate a error don't worry those images are not from the version you see here on github.
