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