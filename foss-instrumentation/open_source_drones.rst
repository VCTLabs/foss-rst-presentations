.. -*- coding: utf-8 -*-

############################################################################################
 An Open Instrumentation Platform: Getting The Most From MAVLink, ArduPilot, and BeagleBone
############################################################################################

.. image:: images/bb-ndvi.jpg
   :align: center
   :width: 75%
.. Make Magazine: Boston’s 3D Printed Drones Meet Up, by Matt Stultz
   http://makezine.com/2014/12/17/bostons-3d-printed-drones-meet-up/
   or
   https://publiclab.org/notes/gpenzo/03-25-2015/ndvi-cape-for-the-beagle-bone

.. contents:: Presentation Outline
   :depth: 1

.. raw:: pdf

   SetPageCounter

Autopilots, Copters, and Drones
===============================

* (RC) Copters are not drones

  * Drones have an autopilot and are (or at least can be) autonomous
  * RC copters (even with an IMU) are generally not fully autonomous

* An autopilot has programmable firmware

  * Usually a microcontroller (typically AVR or ARM)
  * Lots of I/O ports (I2C, SPI, UARTs)
  * Ardupilot, OpenPilot/LibrePilot, PX4, UAVCAN

* Open source autopilot boards and host machines

  * Ardupilot - PixHawk, PX/4, AUAV-X2, PXFmini, BBBMINI Cape/BeaglePilot
  * LibrePilot - CopterControl, CC3D, Revo/Nano, OPLink Mini
  * Some autopilots support dual firmware: VRBRAIN 4
  * Price range $20 - $200 and up
  * Smart Drone Kit Using PXFmini and RaspberryPi Zero

https://www.hackster.io/12590/pi0drone-a-200-smart-drone-with-the-pi-zero-4fec08

Supported Platforms and Flight Models
=====================================

* Original (software) vehicle models in ArduPilot and MAVLink

  - Copter
  - Rover
  - Plane
  - Antenna tracker

* New vehicle / flight models in MAVLink v1.0/v2.0

  - Generic micro air vehicle
  - Fixed-wing aircraft
  - Single/multi-rotor copters
  - Antenna tracker / ground control station
  - Airship
  - Free balloon
  - Rocket
  - Ground rover
  - Surface vessel, Submarine
  - Flapping wing

.. raw:: pdf

   PageBreak twoColumn

Autopilot Examples
==================

.. figure:: images/pixhawk_connectors_top.png
   :width: 100%
   :align: center

   PixHawk Connectors (top)

.. raw:: pdf

   FrameBreak

.. figure:: images/cc3D.jpg
   :width: 50%
   :align: right

   CopterControl3D

.. raw:: pdf

    Spacer 0 1cm

.. figure:: images/vrbrainpinout3-0.jpg
   :width: 70%
   :align: right

   VR BRAIN 4/5 Connections

.. raw:: pdf

    PageBreak cutePage

Ardupilot / APM
===============

MAVLink and MAVConn
===================

Ground Control
==============

MAVLink System Architecture
===========================

.. image:: images/mavlink_protocol_links.png
   :align: center
   :scale: 60%

.. raw:: pdf

    Spacer 0 4mm

* Full MAVLink/MAVConn vehicle configuration
* Linux host system and integrated machine vision/object tracking
* Uses multiple transport/physical layers and redundant GCS links
* Camera X is a third-party camera connected via serial link

MAVLink Software Stack
======================

.. raw:: pdf

    Spacer 0 4mm

.. figure:: images/mavlink_stack.png
   :scale: 75%

.. raw:: pdf

   Spacer 0 1cm

* MAVConn "middleware" typically runs on onboard Linux host
* Host connects to autopilot and onboard cameras
* MAVLink supports multiple OS/IPC Mechanisms/Interfaces
* MAVLink common messages are extended by autopilot firmware

MAVLink Message Protocol Routing
================================

.. image:: images/message_routing.png
   :scale: 30%

.. raw:: pdf

   Spacer 0 1cm

* The MAVConn message broadcast includes action, status and command
  messages, which can be used both for onboard and offboard communication
* Messages are identified and filtered by content instead of recipient addresses
* Routing nodes (node 2) filter messages that belong only to a particular
  subset (nodes 3, 4, and 5)

Open/Supported Hardware
=======================

GPS, IMUs, Sensors, and More
============================

Computer Vision, Cameras and Metadata
=====================================

.. raw:: pdf

   PageBreak twoColumn

Airframes and Kits
==================

and Why You Should Not BYO Airframe
-----------------------------------

Because it's hard...

.. image:: images/1.jpg
   :align: center
   :width: 1500

.. raw:: pdf

   PageBreak
   Transition Wipe 1 90 I

Airframes and Kits
==================

and Why You Should Not BYO Airframe
-----------------------------------

Because it's hard...

.. image:: images/1.jpg
   :align: center
   :width: 95%

.. raw:: pdf

   FrameBreak

.. raw:: pdf

    Spacer 0 3cm

.. image:: images/2.jpg
   :align: center
   :width: 95%

.. raw:: pdf

    PageBreak cutePage
    Transition Split 0

Other Vehicles and Software/Firmware
====================================


* Autonomous 3D-printed Drone
  http://tinyurl.com/3D-printed-drone
* UAVCAN https://github.com/uavcan
* ROS https://github.com/ros
* Other repositories https://github.com/Dronecode

Useful (and fun) Applications
=============================

* BeagleBone NDVI Cape
  http://tinyurl.com/beaglebone-ndvi


* SeaSlug (long-deployment mobile marine sensor platform)
  http://tinyurl.com/SeaSlug-pdf


Resources
=========

Ardupilot and MAVLink

   * http://copter.ardupilot.com/
   * https://github.com/mavlink/mavlink
   * https://github.com/mavlink/c_library
   * https://github.com/mavlink/qgroundcontrol
   * https://github.com/mavlink/c_uart_interface_example
   * https://github.com/pixhawk/mavconn
   * https://github.com/diydrones/ardupilot
   * http://tinyurl.com/FLIR-TIFF-MAVLink

Additional Resources

   * https://www.dronecode.org/
   * https://www.librepilot.org/
   * http://dev.ardupilot.com/wiki/building-px4-for-linux-with-make/
   * http://copter.ardupilot.com/wiki/build-your-own-multicopter/
   * http://www.instructables.com/id/DIY-Drones/

References and Specifications
=============================

.. line-block::

       **Huang, Olson and Moore**, Lightweight Communications and Marshalling
           for Low-latency Interprocess Communication. MIT CSAIL Technical
           Report, 2009.
   
       **Lorenz Meier, Petri Tanskanen, Lionel Heng, Gim Hee Lee, Friedrich**
           **Fraundorfer, and Marc Pollefeys**.  Pixhawk: A micro aerial vehicle
           design for autonomous flight using onboard computer vision.
           Autonomous Robots (AURO), 2012.
   
       The canonical MAVLink Common Message Set is common.xml, which defines both the software interface and the `MAVLINK Common Message Set documentation`_.
      
       The ArduPilot "Copter" interface variant is defined in the `ArduCopter GCS_Mavlink.cpp`_ source file.
   
       The `Exif 2.3 Specification`_ - Exchangeable image file format for digital still cameras: Exif Version 2.3, Revised on December, 2012, Camera & Imaging Products Association.
   
       The `XMP 1.0 Specification`_ - XMP Specification, `Part 1`_ (April, 2012), `Part 2`_ (November 2014), `Part 3`_ (November 2014), Adobe Developers Association.

.. _MAVLINK Common Message Set documentation: https://pixhawk.ethz.ch/mavlink/
.. _ArduCopter GCS_Mavlink.cpp: https://github.com/diydrones/ardupilot/blob/Copter-3.3/ArduCopter/GCS_Mavlink.cpp
.. _Exif 2.3 Specification: http://www.cipa.jp/std/documents/e/DC-008-2012_E.pdf
.. _XMP 1.0 Specification: http://www.adobe.com/products/xmp.html
.. _Part 1: http://wwwimages.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMP%20SDK%20Release%20cc-2014-12/XMPSpecificationPart1.pdf
.. _Part 2: http://wwwimages.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMP%20SDK%20Release%20cc-2014-12/XMPSpecificationPart2.pdf
.. _Part 3: http://wwwimages.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMP%20SDK%20Release%20cc-2014-12/XMPSpecificationPart3.pdf


License and Thanks!
===================

:Author: Stephen L Arnold
:Contact: answers@vctlabs.com
:Revision: 0.1
:Date: Sat, 16 Jul 2016 19:19:24 -0700
:License: `CC-Attribution-ShareAlike`_
:Copyright: 2016 `VCT Labs, Inc.`_

.. _CC-Attribution-ShareAlike: http://creativecommons.org/licenses/by-sa/3.0/
.. _VCT Labs, Inc.: http://www.vctlabs.com

.. raw:: pdf

    Spacer 0 5mm

.. image:: images/cc3.png
   :align: left
   :width: .5in

