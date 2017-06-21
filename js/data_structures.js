var colors = ['blue', 'red', 'green', 'orange'];

var names = ['lighting', 'thunder', 'flash', 'speedy'];

names.push('fasty');
colors.push('pink');

console.log(colors);
console.log(names);

var horse = {};

for (var i = colors.length - 1; i >= 0; i--) {
  horse[names[i]] = colors[i];
}

console.log(horse);

// Car object

function Car(type, model, year, color){
  this.type = type;
  this.model = model;
  this.year = year;
  this.color = color;

  this.honk = function(){
    console.log("*Honk! Honk!*");
  };
  console.log("Car Assembly Complete.");
}

var car1 = new Car('Toyota', "Corolla", 2012, "blue");
var car2 = new Car('Toyota', "Camry", 1998, "green");
var car3 = new Car('Audi', "A4", 2003, "beige");

car1.honk();
car1.honk();

console.log(car1);
console.log(car2);
console.log(car3);
