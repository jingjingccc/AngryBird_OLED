# AngryBirds with AT89S52 and OLED
This project involves an AT89S52 chip and a KT89S51 board to create an AngryBirds game. 
The communication between the components is facilitated through UART, and a visual presentation is achieved with an OLED display. 

## System Stucture
<img src="picture/introduction-4.png" height="400">

## Circuit Diagram
#### 1. The minimum ciruit to run the AT89S52 chip.
<img src="picture/introduction-5.png" height="400">

#### 2. The ciruit for communication between two chips using UART
> [!NOTE] 
> Note that this is a bit tricky.
> In my case, I have to connect TX to TX and RX to RX, then it can work. Don't figure out why...
<img src="picture/introduction-6.png" height="400">

#### 3. The ciruit for communication from two chips to an OLED using I2C
> [!NOTE] 
> Only one microcontroller can control the OLED at a time.
> Initiate the start condition signal for control and send the stop condition signal to discontinue I2C usage.
<img src="picture/introduction-7.png" height="400">

#### 4. The ciruit using two chips to jointly control five buttons for the game
<img src="picture/introduction-8.png" height="400">

## Reference
<img src="picture/introduction-20.png" height="400">
