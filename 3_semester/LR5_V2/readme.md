## Лабораторная работа № 5 
### Вариант 2

&nbsp;   
__Условие__:  
В данной лабораторной работе вам необходимо реализовать резидентную программу с установкой обработчика прерывания.




_Реализуйте резидентную программу, которая при выполнении устанавливает обработчик, делающий циклический сдвиг строчных букв латинского алфавита на заданное число в аргументе (аргумент опциональный, если не указан, считайте сдвиг равен 13)._   
__Пример:__  
&nbsp;&nbsp;&nbsp;&nbsp;Выполняем команду:    
&nbsp;&nbsp;&nbsp;&nbsp;_MYPROGRAM 3_  
&nbsp;&nbsp;&nbsp;&nbsp;_Выполнение завершается._   
&nbsp;&nbsp;&nbsp;&nbsp;_Далее осуществляем ввод:_   
&nbsp;&nbsp;&nbsp;&nbsp;_ввод a -> на экране d_  
&nbsp;&nbsp;&nbsp;&nbsp;_ввод z -> на экране dc_   
&nbsp;&nbsp;&nbsp;&nbsp;_ввод X -> на экране dcX_   
&nbsp;&nbsp;&nbsp;&nbsp;_ввод 1 -> на экране dcX1_  
&nbsp;&nbsp;&nbsp;&nbsp;_При повторном выполнении команды_ обработчик должен быть снят.  

&nbsp;&nbsp;&nbsp;&nbsp;  

## To run:
* You need to have BIN for `TASM` and `TLINK`, `DOSBox`
* Open DOSBox
* Mount Folder with project to DOSBox (TASM and TLINK (and help files must also be in this folder)): >`mount c <dir>`
* Switch to that drive: >`C:`
* Compile and link: >`tasm main`, >`tlink main`
* Run: >`main 5` or any other number from 0 to 9: `main i`


## Demo:  
![Screenshot from DOS-box](capture.PNG)

 
###### © 2021, December | All Rights Reserved
