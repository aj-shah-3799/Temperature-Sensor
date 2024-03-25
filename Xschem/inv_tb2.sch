v {xschem version=3.4.5 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 1660 -1700 1660 -1650 {
lab=VDD}
N 1660 -1550 1660 -1500 {
lab=VSS}
N 1490 -1620 1510 -1620 {
lab=IN}
N 1810 -1600 1860 -1600 {
lab=OUT}
N 1470 -1620 1490 -1620 {
lab=IN}
N 1180 -1580 1180 -1540 {
lab=VSS}
N 1180 -1480 1180 -1440 {
lab=GND}
N 1260 -1580 1260 -1540 {
lab=VDD}
N 1260 -1480 1260 -1440 {
lab=VSS}
N 1340 -1580 1340 -1540 {
lab=IN}
N 1340 -1480 1340 -1440 {
lab=VSS}
N 1910 -1600 1910 -1580 {
lab=OUT}
N 1860 -1600 1910 -1600 {
lab=OUT}
N 1910 -1520 1910 -1490 {
lab=VSS}
C {sky130_fd_pr/corner.sym} 1630 -1440 0 0 {name=CORNER only_toplevel=true corner=tt}
C {inv.sym} 1660 -1600 0 0 {name=x1}
C {devices/vsource.sym} 1180 -1510 0 0 {name=V1 value=0}
C {devices/vsource.sym} 1260 -1510 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 1340 -1510 0 0 {name=V3 value="pulse(0 1.8 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 1180 -1570 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1260 -1570 0 0 {name=p58 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1260 -1450 0 0 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1340 -1450 0 0 {name=p60 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1660 -1690 0 0 {name=p61 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1660 -1520 0 0 {name=p62 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1340 -1570 0 0 {name=p63 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 1480 -1620 0 0 {name=p64 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 1840 -1600 0 1 {name=p65 sig_type=std_logic lab=OUT}
C {devices/capa.sym} 1910 -1550 0 0 {name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1910 -1500 0 0 {name=p66 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1970 -1690 0 0 {name=NGSPICE1
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
.option savecurrents
.control
save all

dc v3 0 1.8 0.025 
plot v(IN) v(OUT)

tran 10p 1u
plot v(IN) v(OUT)
.endc
" }
C {devices/gnd.sym} 1180 -1440 0 0 {name=l2 lab=GND}
