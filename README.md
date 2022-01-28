# Automated Plant Watering System in MATLAB


## Context 

This project was designed and created for a first year engineering course, Computational Thinking through Mechatronics, where we were would use MATLAB and Arduino Grove Board to create a project which involved utilizing the hardware sensors on the Arduino Grove Board.

This idea was originated from a a project that we had done earlier in the semester based on watering a plant. Since this was my first time coding in MATLAB, I decided that I would expand on that project to further increase my knowledge in MATLAB. This was also a good introduction to the Arduino Grove Board and the functions of the on board sensors.

## How it works  

Once the system is turned on the moisture sensor would read the wetness of the water in voltage. This voltage reading would be compared to the values in the program to see if the soil is too dry or wet. Upon comparison if the soil has enough moisture the program would not do anything a would continue keep monitoring. However if the soil was too dry the voltage would high and this would cause the pump to turn on and start watering the plant. While this is happening the LED on the Grove board would light up for as long as water is being pumped as well as the on board buzzer would keep making as noise until the soil was wet enough.

![App Screenshot](https://media.giphy.com/media/w6kq9zq2x0usB4EdO9/giphy.gif)

#### Components Used in Project: 
```
* Arduino Grove Board
* Arduino MOSFET
* Water Pump & Plastic Tube
* Light Sensor
* Rotary Potentiometer
* LED Light & Buzzer
* Plant
```
*The following diagram shows how the components are connected in the system*

![App Screenshot](https://i.imgur.com/qKzjl6S.png)

The second part of this system allows the user to have more manual control. This part involves using the on board light sensor and the rotary potentiometer. Using the potentiometer the user is able to manually turn on the pump by changing the voltage from 1V-5V by turning the knob. When the voltage is greater than 3V the pump will turn on and the buzzer will emit a noise to let the user know that they turned on the pump. When the knob is turned back and the voltage is lower than 3V the pump and the buzzer will stop running. The purpose of the light sensor is so that the pump can be turned on using a flashlight or any light source. The pump will only stay on for as long as the light sensor is picking up a sustained high amount of lumens. 

### Setup Image

![App Screenshot](https://i.imgur.com/wnaGpqT.png)

