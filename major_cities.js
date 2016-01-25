/*
Print cities for a particular province to the Javascript console.
*/
var p = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

for (var key in p){
  if (p.hasOwnProperty(key)){
  console.log(key + " has " + p[key].length + " main cities.");
  }
}
