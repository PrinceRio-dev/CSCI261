

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
   set $MAXN=0xC

#-------------- Local Functions -------------------
# Behaviour:
#   $ans = sigma($arg0)
# Assumptions:
#    $arg0 >= 0
define oracle
   set $sum=0
   set $i=0
   while ($i <= $arg0)
      set $sum=$sum+$i
      set $i++
   end
   set $ans=$sum
end

#---------------- Test Cases -----------------------

tbreak driver
run

set $cew_Test_Count++
          set $res=driver(0)
          set $cew_act=$res 

          set $cew_exp=0
          if (($cew_act) != ($cew_exp))
             set $cew_Error_Count++
             printf "__cew__Test Case ERROR (Ncase) in script at line number 38 \n"
             printf "__cew__   Actual Value is %d \n", $cew_act
             printf "__cew__   Expected Value is %d \n", $cew_exp
          end


set $cnt=0
while ($cnt <= $MAXN)
   oracle $cnt
   set $cew_Test_Count++
          set $res=driver($cnt)
          set $cew_act=$res 

          set $cew_exp=$ans
          if (($cew_act) != ($cew_exp))
             set $cew_Error_Count++
             printf "__cew__Test Case ERROR (Ncase) in script at line number 43 \n"
             printf "__cew__   Actual Value is %d \n", $cew_act
             printf "__cew__   Expected Value is %d \n", $cew_exp
          end
 
   set $cew_Test_Count++
          set $res=sigman($cnt)
          set $cew_act=$res 

          set $cew_exp=$ans
          if (($cew_act) != ($cew_exp))
             set $cew_Error_Count++
             printf "__cew__Test Case ERROR (Ncase) in script at line number 44 \n"
             printf "__cew__   Actual Value is %d \n", $cew_act
             printf "__cew__   Expected Value is %d \n", $cew_exp
          end
 
   set $cnt++
end

printf "__cew__**********Summary**********\n"
         printf "__cew__Total number of test cases = %d \n", $cew_Test_Count
         printf "__cew__Total number of test cases in error = %d \n", $cew_Error_Count

quit
