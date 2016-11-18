//RELEASE 0: Find the Longest Phrase
//define a function called longestString that accepts one stringsArr paramater.
  //create a varaiable longestLength that equals zero.
  //create a variable longestLengthIndex that is an empty array.
  //iterate through the array.
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

// ============================================================= //

// RELEASE 1: Find a Key-Value Match

// define a function keyValueMatch? that takes paramaters objectA and objectB
// iterate through objectA
  //iterate through objectB
    //if objectA's key is equal to objectB's key AND objectA's key's value is equal to objectB's key's value
      // return true
    //
  //
// return false.


function keyValueMatch(objectA, objectB) {
  for (var keyA in objectA) {
    if (objectA.hasOwnProperty(keyA)) {
      for (var keyB in objectB) {
        if (objectB.hasOwnProperty(keyB)) {
          if (keyA == keyB && objectA[keyA] == objectB[keyB]) {
            return true;
          }; //if (keyA == keyB && objectA[keyA] == objectB[keyB])
        }; //if (objectB.hasOwnProperty(keyB))
      }; //for (var keyB in objectB)
    }; //if (objectA.hasOwnProperty(keyA))
  }; //for (var keyA in objectA)
  return false;
}

// ============================================================= //

// RELEASE 2: Generate Random Test Data

// Totally copy/paste the get random int inclusive function from MDN - you understand how it works, you promise, but you're going to use it.
// Define a new method randStringsArr that takes an integer paramater.
  //define an empty array called stringsArr
  //define abcArr var that is an array of the alphabet.
  //loop as many times as the passed integer
    //define variable stringLength that is a result of getRandomIntInclusive with arguments 1 and 10.
    //define variable newStr
    // loop as many times as stringLength
      //add a letter from abcArr at index value reult of getRandomIntInclusive arguments 0 and 25.
    // add newStr to stringsArr
  //return stringsArr

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randStringsArr(integer) {
  var stringsArr = [];
  var abcArr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
  for(strings = 0; strings < integer; strings++) {
    var stringLength = getRandomIntInclusive(1, 10);
    var newStr = "";
    for(letters = 0; letters < stringLength; letters++) {
      newStr += abcArr[getRandomIntInclusive(0, 25)];
    }; //for(letters = 0; letters < stringLength; letters++)
    stringsArr.push(newStr);
  }; //for(strings = 0; strings < integer; strings++)
  return stringsArr;
}

//DRIVER CODE:

//RELEASE 0:
console.log("Driver code tests for Release 0:")
console.log(longestString(["hello", "goodbye", "how are you?"])) // has 1 longest string.
console.log(longestString(["hello", "jonah", "yo"])) // has 2 longest strings.
console.log(longestString(["dude", "cook", "tofu"])) // has 3 longest strings.
console.log(longestString(["hello", "I", "love", "you", "won't", "you", "tell", "me", "your", "name?"])) // ????
console.log("")

//RELEASE 1:
console.log("Driver code tests for Release 1:")
console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54})); // should return true. both have age: 54 ((from example))
console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 55})); // should return false. Almost identical but values changed in age.
console.log("")

//RELEASE 2:
console.log("Driver code tests for Release 2:")
for(times = 0; times < 10; times++){
  stringsArr = randStringsArr(getRandomIntInclusive(3, 7));
  console.log("")
  console.log("In this array: " + stringsArr)
  console.log("The longest string(s) is/are: " + longestString(stringsArr));
};
