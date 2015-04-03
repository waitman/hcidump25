all: hcidump

hcidump:
	cc -I./ -o lib/bluetooth.o 	-c lib/bluetooth.c
	cc -I./ -o lib/hci.o 		-c lib/hci.c
	cc -I./ -o parser/parser.o 	-c parser/parser.c
	cc -I./ -o parser/lmp.o 	-c parser/lmp.c
	cc -I./ -o parser/hci.o 	-c parser/hci.c
	cc -I./ -o parser/l2cap.o 	-c parser/l2cap.c
	cc -I./ -o parser/smp.o 	-c parser/smp.c
	cc -I./ -o parser/att.o 	-c parser/att.c
	cc -I./ -o parser/sdp.o 	-c parser/sdp.c
	cc -I./ -o parser/rfcomm.o 	-c parser/rfcomm.c
	cc -I./ -o parser/bnep.o 	-c parser/bnep.c
	cc -I./ -o parser/cmtp.o 	-c parser/cmtp.c
	cc -I./ -o parser/hidp.o 	-c parser/hidp.c
	cc -I./ -o parser/hcrp.o 	-c parser/hcrp.c
	cc -I./ -o parser/avdtp.o 	-c parser/avdtp.c
	cc -I./ -o parser/avctp.o 	-c parser/avctp.c
	cc -I./ -o parser/avrcp.o 	-c parser/avrcp.c
	cc -I./ -o parser/sap.o 	-c parser/sap.c
	cc -I./ -o parser/obex.o 	-c parser/obex.c
	cc -I./ -o parser/capi.o 	-c parser/capi.c
	cc -I./ -o parser/ppp.o 	-c parser/ppp.c
	cc -I./ -o parser/tcpip.o 	-c parser/tcpip.c
	cc -I./ -o parser/ericsson.o 	-c parser/ericsson.c
	cc -I./ -o parser/csr.o 	-c parser/csr.c
	cc -I./ -o parser/bpa.o 	-c parser/bpa.c
	cc -I./ -o parser/amp.o 	-c parser/amp.c
	cc -I./ -DHAVE_CONFIG_H -o hcidump 	\
		src/hcidump.c			\
		lib/bluetooth.o 		\
		lib/hci.o 			\
		parser/parser.o 		\
		parser/lmp.o			\
		parser/hci.o			\
		parser/l2cap.o			\
		parser/smp.o			\
		parser/att.o			\
		parser/sdp.o			\
		parser/rfcomm.o			\
		parser/bnep.o			\
		parser/cmtp.o			\
		parser/hidp.o			\
		parser/hcrp.o			\
		parser/avdtp.o			\
		parser/avctp.o			\
		parser/avrcp.o			\
		parser/sap.o			\
		parser/obex.o			\
		parser/capi.o			\
		parser/ppp.o			\
		parser/tcpip.o			\
		parser/ericsson.o		\
		parser/csr.o			\
		parser/bpa.o			\
		parser/amp.o

clean:
	rm -f parser/*.o
	rm -f src/*.o
	rm -f lib/*.o
	rm -f hcidump

