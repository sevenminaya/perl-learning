while(<>){
	push(@a, $_);
	}

#Part 1
#1. Print all records that do not list a discoverer in the eighth field.
print "Records without a discoverer:\n\n";	
foreach $element(@a){
	#print "$element" if $element=~m/((.)+\s){7}(-)/i;
	}
	
#2. Print every record omitting the second field.
print "\n\nEvery Record omitting the second field:\n\n";
foreach $element(@a){
	#print "$element" if $element=~s/\s(I|V|X|(-))+\s/ /;
	}

#3. Print the records for satellites that have negative orbital periods.
print "\n\nEvery Record with a negative orbital period:\n\n";
foreach $element(@a){
	#print "$element" if $element=~m/\s(-)\d+/;
	}	
	
#4. Print the data for the objects discovered by the Voyager2 space probe.
print "\n\nEvery Record discovered by the Voyager2 space probe:\n\n";
foreach $element(@a){
	#print "$element" if $element=~m/Voyager2/i;
	}
	
#5. Print each record with the orbital period given in seconds rather than days.
print "\n\nEvery Record with the orbital period in seconds:\n\n";
foreach $element(@a){
	@b = split(" ", $element);
	@b[4] = @b[4]*24*60*60;
	print "@b\n";
	}