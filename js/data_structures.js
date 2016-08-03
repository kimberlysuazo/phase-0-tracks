var colors = ["pink", "orange", "brown", "green"];
var horses = ["Mr. Ed", "Lightning", "Secretariat", "George"];

colors.push("red");
horses.push("Bill");

console.log (colors);
console.log (horses);

var ourHorses = {};

for (var i = 0; i < colors.length; i++)
{
  ourHorses[horses[i]] = colors[i];
}

console.log(ourHorses);


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
      
var saab = new Car(2013, "sedan", "black");
console.log(saab);
saab.drive();