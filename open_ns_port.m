function port_handle = open_ns_port(port_nb)
% Open the serial/COM port. Used for the Neurospec trigger box.
% portnb: number of the port to open (optional). Default is 4.

if nargin == 0
    port_nb = 4;
end

port_string = ['COM' num2str(port_nb)];

port_handle = serial(port_string);
set(port_handle,'BaudRate',9600); % 9600 is recommended by Neurospec
fopen(port_handle);