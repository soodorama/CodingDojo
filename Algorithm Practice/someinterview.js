function diags(arr) {
    var forward = []
    var backward = []
    for (var i = 0; i < arr.length; i++) {
        forward.push(arr[i][i])
        backward.push(arr[i][arr.length-i-1])
    }
    console.log(forward)
    console.log(backward)
}

var arr = [[1,3,5,7],[2,3,6,9],[5,7,9,12],[1,2,3,4]]

diags(arr);


function countNonSpaces(str) {
    var count = 0;
    for (var i = 0; i < str.length; i++) {
        if (str[i] != " ") {
            count++
        }
    }
    return count
}

countNonSpaces("Hello Dojo!")