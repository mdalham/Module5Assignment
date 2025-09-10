//Create an abstract class Appliance
abstract class Appliance {
  //Abstract method
  void turnOn(bool isOn);
  void turnoff(bool isOff);
}

//create subclasses for Fan
class Fan implements Appliance {
  //implements the methods with custom messages
  @override
  void turnOn(bool isOn) {
    //if isOn is ture then print Fan running
    //if isOn is false then print nothing
    if (isOn) {
      print('Fan is now running');
    }
  }

  @override
  void turnoff(bool isOff) {
    //if isOff is true then print Fan off
    //if isOff is false then print nothing
    if (isOff) {
      print('Fan is stopped');
    }
  }
}

//create subclasses for Light
class Light implements Appliance {
  //implements the methods with custom messages
  @override
  void turnOn(bool isOn) {
    //if isOn is ture then print Light on
    //if isOn is false then print nothing
    if (isOn) {
      print('Light is switched on');
    }
  }

  @override
  void turnoff(bool isOff) {
    //if isOff is ture then print Light off
    //if isOff is false then print nothing
    if (isOff) {
      print('Light is switched off');
    }
  }
}

//Main funcation
//Create one Fan and one Light object, and call their methods
void main() {
  //call Fan methods
  Fan fan = Fan();
  fan.turnOn(true);
  fan.turnoff(false);

  //call Light methods
  Light light = Light();
  light.turnOn(true);
  light.turnoff(false);
}
