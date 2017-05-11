####################### COPYRIGHT ProgBit 2017 ###########################
##
## File:          filelist.txt
## Project:       Mac ip
## Init author:   Arin
## Description:   List of design files for the project.
##
##########################################################################
# Design files
set_global_assignment -name VHDL_FILE ../mac_ip/src/mac_ip.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/MDIO.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TxEthernetMAC.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TXStateMachine.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TXFifoInterface.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TXFifoSynk.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TxCrcGen.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TXDataMux.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Tx_mac/TxFrameLengthCounter.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/Receiver.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/RXAddressMatching.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/Rxbuffer.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/RXFCSCheck.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/RXSFDdetector.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/RXStateMachine.vhd
set_global_assignment -name VHDL_FILE ../mac_ip/src/Rx_mac/RxSyncBuffer.vhd