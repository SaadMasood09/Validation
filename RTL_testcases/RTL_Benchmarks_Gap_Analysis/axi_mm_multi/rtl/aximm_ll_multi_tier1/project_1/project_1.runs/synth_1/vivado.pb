
�
Command: %s
53*	vivadotcl2\
Hsynth_design -top aximm_ll_multi_tier1_master_top -part xc7a100tfgg676-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
�
Pparameter declaration becomes local in %s with formal parameter declaration list2507*oasys2 
ll_auto_sync2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
532default:default8@Z8-2507h px� 
�
Pparameter declaration becomes local in %s with formal parameter declaration list2507*oasys2 
ll_auto_sync2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
542default:default8@Z8-2507h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1428.957 ; gain = 96.223 ; free physical = 111327 ; free virtual = 375515
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys23
aximm_ll_multi_tier1_master_top2default:default2
 2default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_top.sv2default:default2
182default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
ll_auto_sync2default:default2
 2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
292default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter MARKER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter PERSISTENT_MARKER bound to: 1'b1 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter PERSISTENT_STROBE bound to: 1'b1 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter NO_MARKER bound to: 1'b1 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DISABLE_TX_AUTOSYNC bound to: 1'b0 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DISABLE_RX_AUTOSYNC bound to: 1'b0 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
level_delay2default:default2
 2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/level_delay.sv2default:default2
362default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
level_delay2default:default2
 2default:default2
12default:default2
12default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/level_delay.sv2default:default2
362default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
delay_z_1st_strobe_reg2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
1212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
marker_replay_reg_reg2default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
1512default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
ll_auto_sync2default:default2
 2default:default2
22default:default2
12default:default2g
Q/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_auto_sync.sv2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ll_transmit2default:default2
 2default:default2f
P/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_transmit.sv2default:default2
292default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DEPTH bound to: 8'b00000001 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter TX_CRED_SIZE bound to: 3'b001 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter ASYMMETRIC_CREDIT bound to: 1'b0 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DEFAULT_TX_CRED bound to: 8'b00001000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2

ll_tx_ctrl2default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_ctrl.sv2default:default2
262default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ll_tx_ctrl2default:default2
 2default:default2
32default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_ctrl.sv2default:default2
262default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ll_tx_cred2default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
262default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter ASYMMETRIC_CREDIT bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter TX_CRED_SIZE bound to: 3'b001 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DEFAULT_TX_CRED bound to: 8'b00001000 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
rx_credit_enc_asym_reg2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
922default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
txonline_dly2_reg2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
1112default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2-
tx_coal_tx_credit_reg_reg2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
1302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys27
#potential_asym_credit_usage_reg_reg2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
1462default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys24
 actual_asym_credit_usage_reg_reg2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
1542default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ll_tx_cred2default:default2
 2default:default2
42default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_tx_cred.sv2default:default2
262default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
syncfifo_reg2default:default2
 2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_reg.sv2default:default2
442default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_WID bound to: 49 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00000001 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_MSB bound to: 48 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
syncfifo_reg2default:default2
 2default:default2
52default:default2
12default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_reg.sv2default:default2
442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ll_transmit2default:default2
 2default:default2
62default:default2
12default:default2f
P/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_transmit.sv2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
ll_transmit__parameterized02default:default2
 2default:default2f
P/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_transmit.sv2default:default2
292default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 77 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DEPTH bound to: 8'b00000001 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter TX_CRED_SIZE bound to: 3'b001 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter ASYMMETRIC_CREDIT bound to: 1'b0 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DEFAULT_TX_CRED bound to: 8'b00001000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys20
syncfifo_reg__parameterized02default:default2
 2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_reg.sv2default:default2
442default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_WID bound to: 77 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00000001 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_MSB bound to: 76 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
syncfifo_reg__parameterized02default:default2
 2default:default2
62default:default2
12default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_reg.sv2default:default2
442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
ll_transmit__parameterized02default:default2
 2default:default2
62default:default2
12default:default2f
P/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_transmit.sv2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ll_receive2default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_receive.sv2default:default2
292default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 71 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DEPTH bound to: 8'b00001000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2

ll_rx_push2default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_rx_push.sv2default:default2
262default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ll_rx_push2default:default2
 2default:default2
72default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_rx_push.sv2default:default2
262default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ll_rx_ctrl2default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_rx_ctrl.sv2default:default2
272default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ll_rx_ctrl2default:default2
 2default:default2
82default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_rx_ctrl.sv2default:default2
272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
syncfifo_ram2default:default2
 2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
442default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_WID bound to: 71 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00001000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_MSB bound to: 70 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 7 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2$
syncfifo_mem1r1w2default:default2
 2default:default2l
V/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_mem1r1w.sv2default:default2
352default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_WID bound to: 71 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00001000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter FIFO_WIDTH_MSB bound to: 70 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 7 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
syncfifo_mem1r1w2default:default2
 2default:default2
92default:default2
12default:default2l
V/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_mem1r1w.sv2default:default2
352default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
syncfifo_ram2default:default2
 2default:default2
102default:default2
12default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ll_receive2default:default2
 2default:default2
112default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_receive.sv2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
ll_receive__parameterized02default:default2
 2default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_receive.sv2default:default2
292default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DEPTH bound to: 8'b00001000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys20
syncfifo_ram__parameterized02default:default2
 2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
442default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter FIFO_WIDTH_WID bound to: 6 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00001000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_WIDTH_MSB bound to: 5 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 7 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_COUNT_MSB bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys24
 syncfifo_mem1r1w__parameterized02default:default2
 2default:default2l
V/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_mem1r1w.sv2default:default2
352default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter FIFO_WIDTH_WID bound to: 6 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter FIFO_DEPTH_WID bound to: 8'b00001000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_WID bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_WIDTH_MSB bound to: 5 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FIFO_DEPTH_MSB bound to: 7 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_ADDR_MSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 syncfifo_mem1r1w__parameterized02default:default2
 2default:default2
112default:default2
12default:default2l
V/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_mem1r1w.sv2default:default2
352default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
syncfifo_ram__parameterized02default:default2
 2default:default2
112default:default2
12default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
ll_receive__parameterized02default:default2
 2default:default2
112default:default2
12default:default2e
O/home/users/komal.inayat/Documents/Task_5/aib-protocols/llink/rtl/ll_receive.sv2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
 aximm_ll_multi_tier1_master_name2default:default2
 2default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_name.sv2default:default2
182default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 aximm_ll_multi_tier1_master_name2default:default2
 2default:default2
122default:default2
12default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_name.sv2default:default2
182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
 2default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_concat.sv2default:default2
182default:default8@Z8-6157h px� 
R
%s
*synth2:
&	Parameter TX_REG_PHY bound to: 1'b0 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter RX_REG_PHY bound to: 1'b0 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
rrarb2default:default2
 2default:default2a
K/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/rrarb.sv2default:default2
332default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter REQUESTORS bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter REQ_ADDR_WID bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter REQ_ADDR_MSB bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter NUM_REQ_WID bound to: 3 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter NUM_REQ_MSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rrarb2default:default2
 2default:default2
132default:default2
12default:default2a
K/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/rrarb.sv2default:default2
332default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
tx_phy_flop_0_reg_reg2default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_concat.sv2default:default2
1902default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
 2default:default2
142default:default2
12default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_concat.sv2default:default2
182default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
aximm_ll_multi_tier1_master_top2default:default2
 2default:default2
152default:default2
12default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/aximm_ll_multi_tier1_master_top.sv2default:default2
182default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[75]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[74]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[73]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
clk_rd2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rst_rd_n2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
m_gen2_mode2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
	tx_online2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2"
tx_stb_userbit2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2%
tx_mrk_userbit[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys24
 aximm_ll_multi_tier1_master_name2default:default2
m_gen2_mode2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

ll_tx_cred2default:default2&
end_of_txcred_coal2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

ll_tx_cred2default:default2"
rx_i_credit[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

ll_tx_cred2default:default2"
rx_i_credit[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

ll_tx_cred2default:default2"
rx_i_credit[1]2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 1463.090 ; gain = 130.355 ; free physical = 111514 ; free virtual = 375703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 1463.090 ; gain = 130.355 ; free physical = 111515 ; free virtual = 375704
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tfgg676-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tfgg676-12default:defaultZ21-403h px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 1471.090 ; gain = 138.355 ; free physical = 111515 ; free virtual = 375704
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[7]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[6]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[5]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[4]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[3]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[2]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[1]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[0]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
1622default:default8@Z8-5818h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
1522default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[7]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[6]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[5]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[4]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[3]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[2]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[1]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
memory_reg[0]2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
1622default:default8@Z8-5818h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2h
R/home/users/komal.inayat/Documents/Task_5/aib-protocols/common/rtl/syncfifo_ram.sv2default:default2
1522default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
tx_ar_pop_ovrd2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
tx_grant_enc_data2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
tx_aw_pop_ovrd2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
tx_w_pop_ovrd2default:default2
22default:default2
52default:defaultZ8-5544h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1487.105 ; gain = 154.371 ; free physical = 111504 ; free virtual = 375694
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 12    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               77 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               71 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               49 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 52    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     75 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 73    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
@
%s
*synth2(
Module level_delay 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ll_auto_sync 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ll_tx_cred 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 6     
2default:defaulth p
x
� 
A
%s
*synth2)
Module syncfifo_reg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               49 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ll_transmit 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
Q
%s
*synth29
%Module syncfifo_reg__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               77 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
P
%s
*synth28
$Module ll_transmit__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ll_rx_ctrl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module syncfifo_mem1r1w 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               71 Bit    Registers := 9     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
A
%s
*synth2)
Module syncfifo_ram 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ll_receive 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
U
%s
*synth2=
)Module syncfifo_mem1r1w__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 9     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Q
%s
*synth29
%Module syncfifo_ram__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
O
%s
*synth27
#Module ll_receive__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
:
%s
*synth2"
Module rrarb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
W
%s
*synth2?
+Module aximm_ll_multi_tier1_master_concat 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     75 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[75]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[74]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rx_phy0[73]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
clk_rd2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
rst_rd_n2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
m_gen2_mode2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2
	tx_online2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2"
tx_stb_userbit2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys26
"aximm_ll_multi_tier1_master_concat2default:default2%
tx_mrk_userbit[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2/
ll_transmit__parameterized02default:default2&
end_of_txcred_coal2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2/
ll_transmit__parameterized02default:default2"
rx_i_credit[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2/
ll_transmit__parameterized02default:default2"
rx_i_credit[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2/
ll_transmit__parameterized02default:default2"
rx_i_credit[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
ll_transmit2default:default2&
end_of_txcred_coal2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
ll_transmit2default:default2"
rx_i_credit[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
ll_transmit2default:default2"
rx_i_credit[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
ll_transmit2default:default2"
rx_i_credit[1]2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2J
6ll_transmit_iw/ll_tx_cred_ii/tx_credit_pls1_reg_reg[0]2default:default2
FDC2default:default2J
6ll_transmit_iw/ll_tx_cred_ii/tx_credit_min1_reg_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-ll_transmit_iw/ll_tx_cred_ii/txonline_dly_reg2default:default2
FDC2default:default2B
.ll_transmit_iaw/ll_tx_cred_ii/txonline_dly_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2K
7ll_transmit_iaw/ll_tx_cred_ii/tx_credit_pls1_reg_reg[0]2default:default2
FDC2default:default2K
7ll_transmit_iaw/ll_tx_cred_ii/tx_credit_min1_reg_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.ll_transmit_iaw/ll_tx_cred_ii/txonline_dly_reg2default:default2
FDC2default:default2B
.ll_transmit_iar/ll_tx_cred_ii/txonline_dly_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2K
7ll_transmit_iar/ll_tx_cred_ii/tx_credit_pls1_reg_reg[0]2default:default2
FDC2default:default2K
7ll_transmit_iar/ll_tx_cred_ii/tx_credit_min1_reg_reg[0]2default:defaultZ8-3886h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2D
0ll_transmit_iar/syncfifo_ii/read_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1ll_transmit_iar/syncfifo_ii/write_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/ll_transmit_iar/syncfifo_ii/numempty_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2D
0ll_transmit_iaw/syncfifo_ii/read_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1ll_transmit_iaw/syncfifo_ii/write_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/ll_transmit_iaw/syncfifo_ii/numempty_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/ll_transmit_iw/syncfifo_ii/read_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2D
0ll_transmit_iw/syncfifo_ii/write_addr_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.ll_transmit_iw/syncfifo_ii/numempty_reg_reg[0]2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%ll_receive_ib/rx_underflow_sticky_reg2default:default2
FDCE2default:default29
%ll_receive_ir/rx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%ll_receive_ir/rx_underflow_sticky_reg2default:default2
FDCE2default:default2:
&ll_transmit_iw/tx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%ll_transmit_iw/tx_overflow_sticky_reg2default:default2
FDCE2default:default2:
&ll_transmit_iw/tx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&ll_transmit_iw/tx_underflow_sticky_reg2default:default2
FDCE2default:default2:
&ll_transmit_iaw/tx_overflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&ll_transmit_iaw/tx_overflow_sticky_reg2default:default2
FDCE2default:default2;
'll_transmit_iar/tx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'll_transmit_iaw/tx_underflow_sticky_reg2default:default2
FDCE2default:default2;
'll_transmit_iar/tx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&ll_transmit_iar/tx_overflow_sticky_reg2default:default2
FDCE2default:default2;
'll_transmit_iar/tx_underflow_sticky_reg2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)\ll_transmit_iar/tx_underflow_sticky_reg 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'll_transmit_iar/tx_underflow_sticky_reg2default:default23
aximm_ll_multi_tier1_master_top2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:55 . Memory (MB): peak = 1682.492 ; gain = 349.758 ; free physical = 112053 ; free virtual = 376256
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:56 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112080 ; free virtual = 376282
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:56 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112168 ; free virtual = 376371
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    24|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |    13|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    93|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    17|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    73|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |   105|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |   260|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |    77|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   |  1030|
2default:defaulth px� 
D
%s*synth2,
|11    |FDPE   |    10|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |   332|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |   321|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2n
Z+------+-------------------------------------+-----------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2n
Z|      |Instance                             |Module                             |Cells |
2default:defaulth p
x
� 
�
%s
*synth2n
Z+------+-------------------------------------+-----------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2n
Z|1     |top                                  |                                   |  2356|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|2     |  aximm_ll_multi_tier1_master_concat |aximm_ll_multi_tier1_master_concat |    62|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|3     |    rrarb_itx                        |rrarb                              |    61|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|4     |  ll_auto_sync_i                     |ll_auto_sync                       |   194|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|5     |    level_delay_i_xvalue             |level_delay                        |    62|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|6     |    level_delay_i_yvalue             |level_delay_5                      |    61|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|7     |    level_delay_i_zvalue             |level_delay_6                      |    64|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|8     |  ll_receive_ib                      |ll_receive__parameterized0         |   114|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|9     |    ll_rx_ctrl_ii                    |ll_rx_ctrl_4                       |     6|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|10    |    syncfifo_ii                      |syncfifo_ram__parameterized0       |   107|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|11    |      syncfifo_mem1r1w_i             |syncfifo_mem1r1w__parameterized0   |    83|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|12    |  ll_receive_ir                      |ll_receive                         |   899|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|13    |    ll_rx_ctrl_ii                    |ll_rx_ctrl                         |    10|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|14    |    syncfifo_ii                      |syncfifo_ram                       |   888|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|15    |      syncfifo_mem1r1w_i             |syncfifo_mem1r1w                   |   863|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|16    |  ll_transmit_iar                    |ll_transmit                        |   140|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|17    |    ll_tx_cred_ii                    |ll_tx_cred_2                       |    83|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|18    |    syncfifo_ii                      |syncfifo_reg_3                     |    57|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|19    |  ll_transmit_iaw                    |ll_transmit_0                      |   119|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|20    |    ll_tx_cred_ii                    |ll_tx_cred_1                       |    64|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|21    |    syncfifo_ii                      |syncfifo_reg                       |    55|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|22    |  ll_transmit_iw                     |ll_transmit__parameterized0        |   174|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|23    |    ll_tx_cred_ii                    |ll_tx_cred                         |    65|
2default:defaulth p
x
� 
�
%s
*synth2n
Z|24    |    syncfifo_ii                      |syncfifo_reg__parameterized0       |   109|
2default:defaulth p
x
� 
�
%s
*synth2n
Z+------+-------------------------------------+-----------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112400 ; free virtual = 376602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 51 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.496 ; gain = 349.762 ; free physical = 112401 ; free virtual = 376604
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1682.500 ; gain = 349.762 ; free physical = 112401 ; free virtual = 376604
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4332default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
862default:default2
512default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:242default:default2
00:01:012default:default2
1758.5202default:default2
438.3912default:default2
1123282default:default2
3765302default:defaultZ17-722h px� 
K
"No constraint will be written out.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/users/komal.inayat/Documents/Task_5/aib-protocols/axi4-mm/axi_mm_multi/aximm_ll_multi_tier1/project_1/project_1.runs/synth_1/aximm_ll_multi_tier1_master_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file aximm_ll_multi_tier1_master_top_utilization_synth.rpt -pb aximm_ll_multi_tier1_master_top_utilization_synth.pb
2default:defaulth px� 
�
�report_utilization: Time (s): cpu = 00:00:00.17 ; elapsed = 00:00:00.25 . Memory (MB): peak = 1782.539 ; gain = 0.000 ; free physical = 112266 ; free virtual = 376527
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar  9 12:31:13 20222default:defaultZ17-206h px� 


End Record