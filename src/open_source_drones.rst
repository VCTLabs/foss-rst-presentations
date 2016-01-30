##############################################################
 BYOD? - Putting The Pieces Together For An Open Source Drone
##############################################################

.. image:: images/APM_copter.jpg
   :align: center
   :width: 100%

.. contents:: Presentation Outline


.. raw:: pdf

   PageBreak

Autopilots, Copters, and Drones (oh my!)
========================================

* (RC) Copters are not drones

  * Drones have an autopilot
  * Drones are (or can be) autonomous

* Autopilot has programmable firmware

  * Usually a microcontroller
  * Lots of I/O ports (I2C, SPI, UARTs)

* Open source autopilot boards

  * PixHawk, PX/4, AUAV-X2, PXF/mini, BBBMINI Cape

* Some Autopilots support dual firmwares: VRBRAIN 4
* Price ranges $20 - $200

Auotpilot Example Board
=======================

.. figure:: images/vrbrainpinout3-0.jpg
   :align: center
   :width: 75%

   VRBRAIN 4 / 5 Pinout

Useful (and fun) Drone Applications
===================================

* 

Ardupilot / APM
===============

MAVLink and MAVConn
===================

Ground Control
==============

The System Architecture
=======================

The Full Software Stack
=======================

The MAVLink Message Protocol
============================

Supported Linux and Autopilot Hardware
======================================

GPS, IMUs, Sensors, and Flight Controllers
==========================================

Vision Processing, Cameras and Metadata
=======================================

Airframes, Kits, and Why You Should Not BYO Airframe
====================================================

Other Vehicle Platforms and Firmware
====================================

Resources
=========

   * http://copter.ardupilot.com/
   * https://github.com/mavlink/mavlink
   * https://github.com/mavlink/c_library
   * https://github.com/mavlink/qgroundcontrol
   * https://github.com/mavlink/c_uart_interface_example
   * https://github.com/pixhawk/mavconn
   * https://github.com/diydrones/ardupilot


License and Thanks!
===================

    * Stephen Arnold - Gentoo / OpenEmbedded Developer

      - Principal Scientist / System Architect @ VCT Labs

        + answers _at_ vctlabs.com

    * Presentation released under license CC-Attribution-ShareAlike
    * http://creativecommons.org/licenses/by-sa/3.0/

.. image:: images/cc3.png
   :align: right
   :width: .5in

