function countGreaterThan(arr, y) {
	var count = 0;
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] > y) count++;
	}
	console.log(count);
	return;
}


function maxMinAvg(arr) {
	if (arr.length > 0) {
		var max = arr[0];
		var min = arr[0];
		var sum = arr[0];
		for (var i = 1; i < arr.length; i++) {
			if (arr[i] > max) max = arr[i];
			if (arr[i] < min) min = arr[i];
			sum += arr[i];
		}
		var avg = sum / arr.length;

		console.log(max, min, avg);
	}
	return;
}

function replaceNeg(arr) {
	if (arr.length > 0) {
		for (var i = 0; i < arr.length; i++) {
			if (arr[i] < 0) arr[i] = "Dojo";
		}
	}
	return arr;
}

function removeRange(arr, start, end) {
	var shift = end - start + 1;
	var i = start;
	while (i + shift < arr.length) {
		arr[i] = arr[i+shift];
		i++;
	}

	for (var i = 0; i < shift; i++) {
		arr.pop();
	}

	return arr;
}