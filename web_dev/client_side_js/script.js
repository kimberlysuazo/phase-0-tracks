

function wooHoo(event){
 var newParagraph = document.createElement('p');
  var paraText= document.createTextNode('Woo Hoo!');
  newParagraph.appendChild(paraText);
 var body = document.getElementsByTagName('body');
  body[0].appendChild(newParagraph);
 newParagraph.style.position= "relative";
 newParagraph.style.marginTop= "-270px";
 newParagraph.style.marginLeft= "500px";
}

// var newElement = document.getElementsByTagName('h1');

// newElement.onclick = function() {
//  console.log('clicked');
// };


var ocho= document.getElementsByClassName("octopus"); 
var ochoPic= ocho[0]
ochoPic.addEventListener("click", wooHoo);


.ondrag=function(){myScript};

