v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -210 280 -140 {
lab=OUT}
N 180 -240 240 -240 {
lab=IN}
N 180 -240 180 -110 {
lab=IN}
N 180 -110 240 -110 {
lab=IN}
N 100 -170 180 -170 {
lab=IN}
N 280 -170 360 -170 {
lab=OUT}
N 280 -240 350 -240 {
lab=VDD}
N 350 -320 350 -240 {
lab=VDD}
N 280 -320 350 -320 {
lab=VDD}
N 280 -320 280 -270 {
lab=VDD}
N 280 -110 350 -110 {
lab=VSS}
N 350 -110 350 -60 {
lab=VSS}
N 280 -60 350 -60 {
lab=VSS}
N 280 -80 280 -60 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 260 -110 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 260 -240 0 0 {name=M2
L=0.15
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 90 -350 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 160 -350 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 120 -320 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 160 -320 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 100 -170 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 360 -170 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 350 -320 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -60 0 1 {name=p8 sig_type=std_logic lab=VSS}
