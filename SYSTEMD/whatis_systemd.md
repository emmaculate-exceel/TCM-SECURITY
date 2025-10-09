# What is systemd

---
  - what is systemd
     * it's an "init system"
     * The init system is the most important process running on your server (PID 1)
     * it manages all services that run in the background .



---


## systemd Unit

   * Units in systemd are resources it's able to manage .
     - this includes services, timers, mounts, automounts, ad there's more.
     - we'll be focusing on services , but it's a good idea to keep in mind there are other types of units .

## Service files

   * service files are text files that contains instructions that tells the systemd how to carry out certain tasks .


### directories where it is very common to find service files

    * /etc/systemd/system
    * /run/systemd/system
    * /lib/systemd/system

## Note
   * The system configuration file is Case sensitive
   * Every line starts with Capital letter


### Every service files has 3 sections

    * [Unit]

      - The Unit function Handles some general information about the service .
      Description : describes the service
      Wants: a prerequisite unit/service that must be started first.
      After: will start after the assigned services are / have started .
      Before: a service that must start first before this very service .
      Documentation: usually used to point to the manpage service file.

      * [Service]
      - This part handles how the unit is treated once it starts up
        * Type: this one defines how systemd signifies it has started successfully.
        * Environmet:
        * ExecStart:
        * ExecReload:
        * ExecStop
    
      * [Install]