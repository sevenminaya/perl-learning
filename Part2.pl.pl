while(<>){
	$_ =~ s/[",""""".""\-"")""("":""?""!"]+//g;
	push(@a, split(" ", $_));
	}

#Part 2
#1. Alphabetically (ignoring capitalization):
print "Words sorted alphabetically:\n\n";
@sorted = sort { lc($a) cmp lc($b)} @a;
foreach $element(@sorted_U){
	#print "$element\n";
}

#2. Alphabetically (capitalization counts):
@sorted_U = sort { $a cmp $b } @a;
foreach $element(@sorted_U){
	#print "$element\n";
}

#3. By frequency, from high to low, (any order for equal frequency):
%frec = ();
foreach $word(@a){
	$frec{$word}++;
	}

foreach $key (sort {$frec{$b} <=> $frec{$a}} keys %frec){
	#print "$frec{$key}\t$key\n";
}

#4. By frequency, from high to low, with alphabetical order for words:
foreach $key (sort {$frec{$b} <=> $frec{$a} or "\L$a" cmp "\L$b"} keys %frec){
	print "$frec{$key}\t$key\n"; 
	}