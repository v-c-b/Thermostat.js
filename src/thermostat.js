function Thermostat() {
  this.temperature = 20
  this.powerSaving = true
  this.energyUsage = 'medium-usage'
};

Thermostat.prototype.up = function() {
  if (this.powerSaving) {
    if (this.temperature < 25) {
      this.temperature += 1;
    } else {
      throw 'Maximum temperature set to 25'
    }
  } else {
    if (this.temperature < 32) {
      this.temperature += 1;
    } else {
      throw 'Maximum temperature set to 32'
    }
  }
};

Thermostat.prototype.down = function() {
  if (this.temperature > 10) {
  this.temperature -= 1;}
  else { throw 'Minimum temperature set to 10'}
};

Thermostat.prototype.powerSavingSwitch = function() {
  this.powerSaving = !this.powerSaving
};

Thermostat.prototype.reset = function() {
  this.temperature = 20;
};

Thermostat.prototype.updateUsage = function() {
  if (this.temperature < 18) {
    this.energyUsage = 'low-usage';
  } else if (this.temperature >= 25) {
    this.energyUsage = 'high-usage';
  } else {
    this.energyUsage = 'medium-usage';
  }
};
