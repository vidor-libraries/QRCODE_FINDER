# Copyright 2018 ARDUINO SA (http://www.arduino.cc/)
# This file is part of Vidor IP.
# Copyright (c) 2018
# Authors: Dario Pennisi
#
# This software is released under:
# The GNU General Public License, which covers the main part of
# Vidor IP
# The terms of this license can be found at:
# https://www.gnu.org/licenses/gpl-3.0.en.html
#
# You can be released from the requirements of the above licenses by purchasing
# a commercial license. Buying such a license is mandatory if you want to modify or
# otherwise use the software for commercial activities involving the Arduino
# software without disclosing the source code of your own applications. To purchase
# a commercial license, send an email to license@arduino.cc.

#
# request TCL package from ACDS 16.1
#
package require -exact qsys 16.1


#
# module QRCODE_FINDER
#
set_module_property DESCRIPTION ""
set_module_property NAME QRCODE_FINDER
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ipTronix
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "QRCODE Finder"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


#
# file sets
#
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL QRCODE_FINDER
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file QRCODE_FINDER.sv SYSTEM_VERILOG PATH QRCODE_FINDER.sv TOP_LEVEL_FILE


#
# parameters
#
add_parameter pHRES INTEGER 640
set_parameter_property pHRES DEFAULT_VALUE 640
set_parameter_property pHRES DISPLAY_NAME pHRES
set_parameter_property pHRES TYPE INTEGER
set_parameter_property pHRES UNITS None
set_parameter_property pHRES ALLOWED_RANGES -2147483648:2147483647
set_parameter_property pHRES HDL_PARAMETER true
add_parameter pVRES INTEGER 480
set_parameter_property pVRES DEFAULT_VALUE 480
set_parameter_property pVRES DISPLAY_NAME pVRES
set_parameter_property pVRES TYPE INTEGER
set_parameter_property pVRES UNITS None
set_parameter_property pVRES ALLOWED_RANGES -2147483648:2147483647
set_parameter_property pVRES HDL_PARAMETER true
add_parameter pTHRESHOLD INTEGER 60
set_parameter_property pTHRESHOLD DEFAULT_VALUE 60
set_parameter_property pTHRESHOLD DISPLAY_NAME pTHRESHOLD
set_parameter_property pTHRESHOLD TYPE INTEGER
set_parameter_property pTHRESHOLD UNITS None
set_parameter_property pTHRESHOLD ALLOWED_RANGES -2147483648:2147483647
set_parameter_property pTHRESHOLD HDL_PARAMETER true


#
# display items
#


#
# connection point avalon_slave
#
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clk
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 1
set_interface_property avalon_slave readWaitStates 0
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave iADDRESS address Input 11
add_interface_port avalon_slave iWRITE_DATA writedata Input 32
add_interface_port avalon_slave iWRITE write Input 1
add_interface_port avalon_slave iREAD read Input 1
add_interface_port avalon_slave oREAD_DATA readdata Output 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


#
# connection point reset
#
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset iRESET reset Input 1


#
# connection point clock
#
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk iCLOCK clk Input 1


#
# connection point vid_in
#
add_interface vid_in conduit end
set_interface_property vid_in associatedClock ""
set_interface_property vid_in associatedReset ""
set_interface_property vid_in ENABLED true
set_interface_property vid_in EXPORT_OF ""
set_interface_property vid_in PORT_NAME_MAP ""
set_interface_property vid_in CMSIS_SVD_VARIABLES ""
set_interface_property vid_in SVD_ADDRESS_GROUP ""

add_interface_port vid_in iVID_DATA data Input 24
add_interface_port vid_in iVID_DATA_VALID dv Input 1
add_interface_port vid_in iVID_START start Input 1
add_interface_port vid_in iVID_RESET reset Input 1
add_interface_port vid_in iVID_CLOCK clk Input 1


#
# connection point vid_out
#
add_interface vid_out conduit end
set_interface_property vid_out associatedClock ""
set_interface_property vid_out associatedReset ""
set_interface_property vid_out ENABLED true
set_interface_property vid_out EXPORT_OF ""
set_interface_property vid_out PORT_NAME_MAP ""
set_interface_property vid_out CMSIS_SVD_VARIABLES ""
set_interface_property vid_out SVD_ADDRESS_GROUP ""

add_interface_port vid_out oVID_DATA data Output 24
add_interface_port vid_out oVID_DATA_VALID dv Output 1
add_interface_port vid_out oVID_START start Output 1

