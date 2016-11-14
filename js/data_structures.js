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


function Car(make, model, year, color) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;

  this.startEngine = function(){
    console.log("Motor Purrs");
  };

  this.driveFast = function(){
    console.log("Zoom, zoom!");
  };
}

theLyft = new Car("Toyota", "Prius", 2014, "Charcol")
theSexyCar = new Car("Mercedes Benz", "SLR McLaren", 2010, "Silver")

theLyft.startEngine()

theSexyCar.driveFast()
