// Default export
export default function greet(name) {
  return `Hello, ${name}!`;
}

// Named exports
export const userInfo = {
  username: "jsMaster",
  level: 1
};

export function checkEvenOdd(number) {
  if (number % 2 === 0) {
    return `${number} is even`;
  } else {
    return `${number} is odd`;
  }
}

export var person = {
  name: "Charn teja",
  age: 28,
  city: "JMD"
};

export var number = [1, 2, 3, 4];
