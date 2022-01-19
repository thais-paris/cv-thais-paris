var cube = document.querySelector('.cube');
var radioGroup = document.querySelector('.radio-group');
var currentClass = '';

function changeSide() {
  var checkedRadio = radioGroup.querySelector(':checked');
  var showClass = 'show-' + checkedRadio.value;
  if (currentClass) {
    cube.classList.remove(currentClass);
  }
  cube.classList.add(showClass);
  currentClass = showClass;
}
// set initial side
changeSide();

radioGroup.addEventListener('change', changeSide);

/* ==================== RangeDisplay ==================== */

function RangeDisplay(input) {
  this.input = input;
  this.output = document.createElement('span');
  this.output.className = 'range-display';
  this.units = this.input.getAttribute('data-units') || '';
  // events
  var onChange = this.update.bind(this);
  this.input.addEventListener('change', onChange);
  this.input.addEventListener('input', onChange);
  // set initial output
  this.update();
  this.input.parentNode.appendChild(this.output);
}

RangeDisplay.prototype.update = function () {
  this.output.textContent = this.input.value + this.units;
};

/* ==================== init ==================== */

// init RangeDisplays
var ranges = document.querySelectorAll('input[type="range"]');
for (var i = 0; i < ranges.length; i++) {
  new RangeDisplay(ranges[i]);
}



var scene = document.querySelector('.scene');
var cube = document.querySelector('.cube');
var originX = 50;
var originY = 50;


// spin cube
var spinCubeCheckbox = document.querySelector('.spin-cube-checkbox');
spinCubeCheckbox.onchange = function () {
  cube.classList.toggle('is-spinning', spinCubeCheckbox.checked);
};
spinCubeCheckbox.onchange();

// backface visibility
var backfaceCheckbox = document.querySelector('.backface-checkbox');
backfaceCheckbox.onchange = function () {
  cube.classList.toggle('is-backface-hidden', !backfaceCheckbox.checked);
};
