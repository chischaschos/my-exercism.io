var Bob = function(){
  this.hey = function(msg) {
    greetings = 'Whatever.';

    if ( msg.match(/^([A-Z] !?)*$/) > 0 ){
      greetings  ='Woah, chill out!';
    }

    if (msg == 'Does this cryogenic chamber make me look fat?'){
      greetings  ='Sure.';
    }

    return greetings
  }
}
module.exports = Bob;
