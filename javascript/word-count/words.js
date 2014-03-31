var Words = function (words) {
  this.words = words;

  function countWords(words) {
    var wordsCount = {};

    words.map(function(word) {
      return word.toLowerCase();

    }).forEach(function(word) {
      if (!(word in wordsCount)) wordsCount[word] = 0;
      wordsCount[word] += 1;
    });

    return wordsCount;
  }

  function filterWords(words) {
    return words.match(/\w+/g);
  }

  this.count = countWords(filterWords(this.words));
}
module.exports = Words;
