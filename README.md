# NeurospecTriggerBox

These MATLAB functions are used to send triggers using the Neurospec Trigger Box (https://www.neurospec.com/News#ns-news-15). Many EEG systems require triggers to be sent via a parallel port, but these days many computers (laptops in particular) do not have parallel ports anymore. This little device basically serves as a USB-to-parallel port adapter. After installing the driver that ships with the device, the trigger box will appear as a serial COM port.

The workflow is as follows:
1. port_handle = open_ns_port(port_nb)
2. send_ns_trigger(trigger_val, port_handle)
3. close_ns_port(port_handle)
