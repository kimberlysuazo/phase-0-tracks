
// This function adds new paragraph "Woo hoo!"
function wooHoo(event){
  var newParagraph = document.createElement('p');
  var paraText= document.createTextNode('Woo Hoo!');
  newParagraph.appendChild(paraText);
  var body = document.getElementsByTagName('body');
  body[0].appendChild(newParagraph);
  newParagraph.style.position= "absolute";
  newParagraph.style.marginTop= "-270px";
  newParagraph.style.marginLeft= "500px";
}

// this function changes the hat's position
function liftHat (event) {
  event.target.style.marginTop = "-50px"
}
// this function changes the paragraph text
function clickMe(event){
  var parent = document.getElementsByTagName('body');
  var child = document.getElementById('clickable');
  var para = document.createElement('p');
  var node = document.createTextNode("Now click on my glasses!");
  para.appendChild(node);
  parent[0].replaceChild(para, child);
  para.style.fontSize = "40px";
}

// Add woo hoo AFTER glasses are clicked
var glasses= document.getElementsByClassName("glasses"); 
glasses[0].addEventListener("click", wooHoo);

// Lifts hat and changes paragraph
var hat= document.getElementsByClassName("hat"); 
hat[0].addEventListener("click", liftHat);
hat[0].addEventListener("click", clickMe);