
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/utils_1/imports/synth_1/ArmProcessor.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2x
dC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/utils_1/imports/synth_1/ArmProcessor.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
z
Command: %s
53*	vivadotcl2I
5synth_design -top ArmProcessor -part xa7s75fgga676-2I2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xa7s752default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xa7s752default:defaultZ17-349h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
248482default:defaultZ8-7075h px? 
?
.identifier '%s' is used before its declaration4750*oasys2!
immediate_out2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/ArmProcessor.v2default:default2
592default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
branch2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/ArmProcessor.v2default:default2
602default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2 
alu_zero_out2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/ArmProcessor.v2default:default2
602default:default8@Z8-6901h px? 
?
macro '%s' redefined5977*oasys2
	DATA_SIZE2default:default2m
WC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/data_memory.v2default:default2
222default:default8@Z8-9719h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1284.375 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2 
ArmProcessor2default:default2
 2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/ArmProcessor.v2default:default2
262default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Pc2default:default2
 2default:default2d
NC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/Pc.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pc2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/Pc.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
data_memory2default:default2
 2default:default2m
WC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/data_memory.v2default:default2
252default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_memory2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/data_memory.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
register_file2default:default2
 2default:default2o
YC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/register_file.v2default:default2
252default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
register_file2default:default2
 2default:default2
02default:default2
12default:default2o
YC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/register_file.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
control_unit2default:default2
 2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
442default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
702default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
control_unit2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
442default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
imm_gen2default:default2
 2default:default2i
SC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/imm_gen.v2default:default2
292default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2i
SC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/imm_gen.v2default:default2
362default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
imm_gen2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/imm_gen.v2default:default2
292default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2e
OC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/alu.v2default:default2
352default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/alu.v2default:default2
352default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
ArmProcessor2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/ArmProcessor.v2default:default2
262default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2
alu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2
imm_gen2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[24]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[23]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[22]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[21]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[20]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[19]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[18]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[17]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[16]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[15]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[11]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[10]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[9]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[8]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[7]2default:default2 
control_unit2default:defaultZ8-7129h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1284.375 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1284.375 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xa7s75fgga676-2I
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1284.375 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xa7s75fgga676-2I2default:defaultZ21-403h px? 
?
!inferring latch for variable '%s'327*oasys2

branch_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
722default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
mem_read_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
732default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
mem_write_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
742default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
reg_write_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
752default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
mem_to_reg_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
762default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
alu_src_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
782default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

alu_op_reg2default:default2n
XC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/control_unit.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
imm_out_reg2default:default2i
SC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/imm_gen.v2default:default2
382default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
zero_flag_reg2default:default2e
OC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/alu.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
alu_out_reg2default:default2e
OC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.srcs/sources_1/new/alu.v2default:default2
472default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1284.375 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 162   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 144   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 298   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 140 (col length:80)
BRAMs: 180 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:50 ; elapsed = 00:00:51 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:50 ; elapsed = 00:00:51 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     4|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    24|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT2   |   186|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT3   |   154|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT4   |   472|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT5   |   820|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT6   |  2323|
2default:defaulth px? 
D
%s*synth2,
|8     |MUXF7  |   514|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF8  |   193|
2default:defaulth px? 
D
%s*synth2,
|10    |FDRE   |  3144|
2default:defaulth px? 
D
%s*synth2,
|11    |LD     |    79|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |    67|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |   308|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|      |Instance          |Module        |Cells |
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|1     |top               |              |  8288|
2default:defaulth p
x
? 
^
%s
*synth2F
2|2     |  alu_unit        |alu           |   105|
2default:defaulth p
x
? 
^
%s
*synth2F
2|3     |  control         |control_unit  |   116|
2default:defaulth p
x
? 
^
%s
*synth2F
2|4     |  immediate_gen   |imm_gen       |    72|
2default:defaulth p
x
? 
^
%s
*synth2F
2|5     |  instruction_mem |data_memory   |  3110|
2default:defaulth p
x
? 
^
%s
*synth2F
2|6     |  program_counter |Pc            |  2259|
2default:defaulth p
x
? 
^
%s
*synth2F
2|7     |  reg_file        |register_file |  2246|
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 33 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1395.184 ; gain = 110.809
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0812default:default2
1395.1842default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
8102default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1395.1842default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 79 instances were transformed.
  LD => LDCE: 79 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
bbea53cd2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322default:default2
332default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:002default:default2
00:01:022default:default2
1395.1842default:default2
110.8092default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2h
TC:/Users/Evan/Documents/SYSC_4310_ARM_Verilog/arm-lab3.runs/synth_1/ArmProcessor.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file ArmProcessor_utilization_synth.rpt -pb ArmProcessor_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Dec  9 16:21:01 20222default:defaultZ17-206h px? 


End Record