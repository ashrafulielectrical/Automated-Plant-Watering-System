%Clears any previous variables and figures
clear all; close all;
%seeting the Arduino to a veraible
a = arduino ('COM5', 'nano3');
%setting a value to variable stop
stop = false;

while ~ stop
  %Rotary Potentiometer Voltage Reading 
  rv = readVoltage (a,'A0')
  %Moisture Sensor Voltage Reading
  mv = readVoltage (a,'A1') 
  %Light Sensor Reading
  lv = readVoltage (a,'A6')
  
  %if the soil is dry it turn the pump on then 
  if mv > 5
      writeDigitalPin (a,'D4',1);
      writeDigitalPin (a,'D2',1);
      writePWMDutyCycle(a,'D5',0.5);
      pause(0.1)
      writePWMDutyCycle(a,'D5',0);
       writeDigitalPin (a,'D2',1);
      writePWMDutyCycle(a,'D5',0.5);
      pause(0.1)
      writePWMDutyCycle(a,'D5',0);
      
  %If soil is wet turn off pump
  elseif mv < 2.47
     writeDigitalPin (a,'D2',0);
     writeDigitalPin (a,'D4',0);
     writePWMDutyCycle(a,'D5',0);
      
  end
  
  %if rotary potentiometer voltage is higher than 3 then pump turn on
  if rv > 3 
      writeDigitalPin (a,'D2',1);
       writePWMDutyCycle(a,'D5',0.11);
       writeDigitalPin (a,'D4',1);
       
  %Otherwise it stays off 
  else 
      writeDigitalPin (a,'D2',0);
       writePWMDutyCycle(a,'D5',0);
       writeDigitalPin (a,'D4',0);
  end
  
  if lv > 2
      writeDigitalPin (a,'D2',1);
       writeDigitalPin (a,'D4',1);
       
  else 
      writeDigitalPin (a,'D2',0);
       writeDigitalPin (a,'D4',0);
  end
  
  stop = readDigitalPin (a,'D6');
      
end