//define a function called longestString that accepts one stringsArr paramater.
  //create a varaiable longestLength that equals zero.
  //create a variable longestLengthIndex that is an empty array.
  //itterate through the array.
    //compare the length of each string in the array to longestLength.
    //if string's length is larger than longestLength
      //empty longestLengthIndex
      //save strings length as longestLength
      //shovel current items' index to longestLengthIndex
    //if string's length is equal to longestLength
      //shovel current items' index to longestLengthIndex
    //no else.
  //iterate through longestLengthIndex array and return strings from stringsArr at each index in longestLengthIndex


function longestString(stringsArr) {
  var longestLength = 0;
  var longestLengthIndex = [];
  for(idx = 0; idx < stringsArr.length; idx++){
    if(stringsArr[idx].length > longestLength) {
      longestLengthIndex.length = 0;
      longestLength = stringsArr[idx].length;
      longestLengthIndex.push(idx)
    } else if (stringsArr[idx].length == longestLength) {
      longestLengthIndex.push(idx)
    }; // if(stringsArr[idx].length > longestLength)
  };//for(idx = 0; idx < stringsArr.length; idx++)
  output = []
  for(idx = 0; idx < longestLengthIndex.length; idx++) {
    output.push(stringsArr[longestLengthIndex[idx]]);
  }; //for(idx = 0; idx < longestLengthIndex.length; idx++)
  return output;
};

// note that this code solves for multple longest strings. 

console.log(longestString(["hello", "goodbye", "how are you?"])) // has 1 longest string.
console.log(longestString(["hello", "jonah", "yo"])) // has 2 longest strings.
console.log(longestString(["dude", "cook", "tofu"])) // has 3 longest strings.
console.log(longestString(["hello", "I", "love", "you", "won't", "you", "tell", "me", "your", "name?"])) // ????
