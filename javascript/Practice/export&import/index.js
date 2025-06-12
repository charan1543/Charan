// index.js

export function factorial(n) {
  if (n === 0 || n === 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

export function add(a, b) {
  return a + b;
}

export function subtract(a, b) {
  return a - b;
}

export function concatenate(str1, str2) {
  return str1 + str2;
}

export function reverse(str) {
  return str.split('').reverse().join('');
}

export function addi(a, b) {
  return a + b;
}

export function subtrac(a, b) {
  return a - b;
}