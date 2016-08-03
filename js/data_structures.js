var colors = ["pink", "orange", "brown", "green"];
var horses = ["Mr. Ed", "Lightning", "Secretariat", "George"];

colors.push("red");
horses.push("Bill");

console.log (colors);
console.log (horses);

//Build ourHorses object using the colors and horses arrays. 
var ourHorses = {};
for (var i = 0; i < colors.length; i++)
{
  ourHorses[horses[i]] = colors[i];
}

console.log(ourHorses);

//Constructor function for a car 
function Car(year, make, color)
    {
      this.year = year;
      this.make = make;
      this.color = color;
      
      this.drive = function() 
      {
        console.log("Vroom, vroom!");
      };
    }

// make 4 new cars using the Car constructor function      
var saab = new Car(2013, "sedan", "black");

var ford = new Car(2015, "pick up", "red");

var subaru = new Car(2000, "hatchback", "white");

var mazda = new Car(2016, "sports car", "blue");

//make two cars drive. 
saab.drive();
mazda.drive();

//Use a for in loop to loop through the keys and values of an object. 
for(var i in saab) 
{
  console.log( i + ": " + saab[i] + "\b");
}

for(var i in ford) 
{
  console.log( i + ": " + ford[i] + "\n");
}

//Use object.keys to print all keys in an object. 
console.log(Object.keys(saab));
console.log(saab[Object.keys(saab)[0]]);
console.log(saab[Object.keys(saab)[1]]);
console.log(saab[Object.keys(saab)[2]]);

