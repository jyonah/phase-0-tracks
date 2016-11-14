var horseColors = ["brown", "white", "grey", "black"]
var horseNames = ["Jeff", "Steven", "Ohad", "Yoav"]

horseColors.push("red")
horseNames.push("Jonah")


console.log(horseNames)
console.log(horseColors)


function makeObject(array1, array2) {
  newObject = {}
  for(idx = 0; idx < array1.length; idx++) {
    newObject[array1[idx]] = array2[idx];
  };
  return newObject
}

barn = makeObject(horseNames, horseColors)

console.log(barn)
