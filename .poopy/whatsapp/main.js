console.log('Hello World!');
const leb = document.querySelector('.label')
const lab = document.querySelector('.labe');
const leber = document.querySelector('.label_20')
const laber = document.querySelector('.labe_er');

const number = document.getElementById('number');
const name = document.getElementById('name');

name.addEventListener('focus', () => {
leb.style.color = "#3193e4";
leb.style.opacity = "1";    
lab.style.transition = "0.7s";
leb.style.fontSize = "12px";
lab.style.transform = "translateY(-3px)";
});

name.addEventListener('blur', () => {
  leb.style.color = "white";
  leb.style.opacity = "0.5";
  lab.style.transform = "translateY(30px)";
  leb.style.fontSize = "15px";
});

number.addEventListener('focus', () => {
  leber.style.color = "#3193e4";
  leber.style.opacity = "1";
  laber.style.transition = "0.7s";
  leber.style.fontSize = "12px";
  laber.style.transform = "translateY(-3px)";
});

number.addEventListener('blur', () => {
  leber.style.color = "white";
  leber.style.opacity = "0.5";
  laber.style.transform = "translateY(30px)";
  leber.style.fontSize = "15px";
});