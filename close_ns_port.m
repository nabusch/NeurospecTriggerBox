function close_ns_port(port_handle)
% Close the serial/COM port. Used for the Neurospec trigger box.
% port_handle: opened previously with open_ns_port.

fclose(port_handle)
delete(port_handle)
clear port_handle