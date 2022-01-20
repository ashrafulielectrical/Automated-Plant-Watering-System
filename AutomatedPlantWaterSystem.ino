clear all;close all;

a = arduino;

stop = false;

readVoltage (a,'A1')

 while ~ stop 

     voltage = readVoltage (a,'A1')
     voltage;

    if  voltage > 2.4

   writeDigitalPin (a,'D2',1);

    elseif voltage < 2.3

    writeDigitalPin (a,'D2',0);

    end

    stop = readDigitalPin (a,'D6');
 
 end

 readVoltage (a,'A1')