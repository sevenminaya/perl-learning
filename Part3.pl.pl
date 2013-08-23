while(<>){
	push(@a, $_);
	}

foreach $element(@a){
	$element=~s/0/zero/g;
	$element=~s/1/one/g;
	$element=~s/2/two/g;
	$element=~s/3/three/g;
	$element=~s/4/four/g;
	$element=~s/5/five/g;
	$element=~s/6/six/g;
	$element=~s/7/seven/g;
	$element=~s/8/eight/g;
	$element=~s/9/nine/g;
	print "$element";
	}
	