

#cew_Variables






# Cew for asm Testing Script
# Peter Walsh Mar 2002

#------------ gdb/cew Initialization ---------------
   #set remotebaud 9600
   #target buffalo /dev/ttyS0
   # NOTE... only tested on the simulator
   # BY DEFAULT
   target sim
   load start.elf
   set language asm
   set $cew_Test_Count=0
          set $cew_Error_Count=0


#-------------- Local Constants -------------------
# none
#-------------- Local Functions -------------------
# none
#---------------- Test Cases -----------------------

tbreak driver
run

set $cew_Test_Count++
          set $res=driver()
          set $cew_act=$res 

          set $cew_exp=10
          if (($cew_act) != ($cew_exp))
             set $cew_Error_Count++
             printf "__cew__Test Case ERROR (Ncase) in script at line number 24 \n"
             printf "__cew__   Actual Value is %d \n", $cew_act
             printf "__cew__   Expected Value is %d \n", $cew_exp
          end


printf "__cew__**********Summary**********\n"
         printf "__cew__Total number of test cases = %d \n", $cew_Test_Count
         printf "__cew__Total number of test cases in error = %d \n", $cew_Error_Count

quit
