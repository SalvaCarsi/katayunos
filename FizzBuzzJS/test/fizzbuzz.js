var expect = require('chai').expect;

describe('FizzBuzz', function() {

  it('Generates the numbers from 1 to 100', function() {
    var result = generateNumbers();
    expect(result.length).to.equal(100);
    expect(result.get(1)).to.equal(1);
    expect(result.get(100)).to.equal(100);
  });

  it('writes fizz if divisible by 3', function() {
    var result = generateNumbers();
    fizzArray = result.map(element => writeFizz(element));
    expect(fizzArray.get(3)).to.equal('fizz');
    expect(fizzArray.get(6)).to.equal('fizz');
  });

  it('writes buzz if divisible by 5', function() {
    var result = generateNumbers();
    buzzArray = result.map(element => writeBuzz(element));

    expect(buzzArray.get(5)).to.equal('buzz');
    expect(buzzArray.get(10)).to.equal('buzz');
  });

  it('writes fizzbuzz if divisible by 3 and 5', function() {
    var result = generateNumbers();
    fizzArray = result.map(element => writeFizz(element));
    fizzbuzzArray = fizzArray.map(element => writeBuzz(element));

    expect(fizzbuzzArray.get(15)).to.equal('fizzbuzz');
    expect(fizzbuzzArray.get(30)).to.equal('fizzbuzz');
  });
});

generateNumbers = () => {
  class Numbers {
    constructor() {
      this.numbers = Array(100).fill().map((x,i)=>i+1);
      this.length = this.numbers.length;
    }

    get(index) {
      return this.numbers[index - 1];
    }

    map(fx) {
      this.numbers = this.numbers.map(fx);

      return this;
    }
  }

  return new Numbers();
}

writeFizz = (element) => {
  if (element % 3 == 0) return 'fizz';
  else return element;
}

writeBuzz = (element) => {
  if (element % 5 == 0) return 'buzz';
  else return element;
}
