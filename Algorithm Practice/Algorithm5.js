function resetNegatives(arr) {
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] < 0) arr[i] = 0;
	}
	return arr;
}



function moveForward(arr) {
	for (var i = 0; i < arr.length - 1; i++) {
		arr[i] = arr[i+1];
	}
	arr[arr.length - 1] = 0;
	return;
}



function returnReversed(arr) {
	for (var i = 0; i < arr.length / 2; i++) {
		var swapPos = arr.length - i - 1;
		var temp = arr[swapPos];
		arr[swapPos] = arr[i];
		arr[i] = temp;
	}
	return arr;
}



function repeatTwice(arr) {
	var orig_length = arr.length;
	arr.length *= 2;
	for (var i = orig_length - 1; i >= 0; i--) {
		arr[i*2+1] = arr[i];
		arr[i*2] = arr[i];
	}

	return arr;
}