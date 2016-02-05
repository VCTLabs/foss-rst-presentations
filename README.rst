==============================
 ELC 2016 San Diego Abstracts
==============================

A repo for ELC 2016 presentation stuff; see prebuilt directory for
PDFs or other binary output, and the source directory for source files.

BYOD? - Putting The Pieces Together For An Open Source Drone
============================================================

Abstract
--------

What is drone?  What is a quad-copter?  What is an autopilot, and just what is an IMU or a Kalman filter?  This presentation will describe the open source drone architecture defined by the Ardupilot firmware, the MAVLink message protocol, and various supported autopilot devices and peripherals.  We'll cover all the current capabilities and pieces of the core software stack, as well as extended support for different vehicle platforms, computer vision processing, cameras and image tags, and multi-vehicle swarms. Airframe options and alternative firmware will  also be discussed, including available support for micro-drones.

Slides
------

`prebuilt/open_source_drones.pdf <prebuilt/open_source_drones.pdf?raw=true>`_

`src/open_source_drones.rst <src/open_source_drones.rst?raw=true>`_


Demote those Security Bugs with a Hardened Profile
==================================================

Abstract
--------

Security engineers have long been pushing the idea of multiple layers of
defense and countermeasures, offering `very well documented`_ processes and
tools for this effort. Sadly, the software industry as a whole has long been
failing to heed this advice, leading to `serious breaches`_ with theft of 
sensitive data. We embedded Linux developers need to step up our security 
game to keep today's new and bleeding-edge products from becoming tomorrow's
security headlines!

The current mainline kernel includes several access control systems that reduce
the risk of bugs escalating into high-level security compromises, such as the
venerable SELinux (which is even enabled by default in Android 4.4 and later).
This presentation focuses on a complementary set of `security mechanisms`_: PIE
toolchain hardening, PAX kernel hardening, and the PAX userland tools. These
technologies work together to demote whole classes of bugs from headline-grabbing
remote compromise and/or `data theft exploits`_ to "mere" `DOS annoyances`_. 

.. _very well documented: http://iase.disa.mil/Pages/index.aspx
.. _serious breaches: http://www.networkworld.com/article/3011103/security/biggest-data-breaches-of-2015.html
.. _security mechanisms: https://wiki.gentoo.org/wiki/Project:Hardened
.. _data theft exploits: http://perception-point.io/2016/01/14/analysis-and-exploitation-of-a-linux-kernel-vulnerability-cve-2016-0728/
.. _DOS annoyances: http://frank2.net/grsecurity-and-cve-2016-0728-linux-kernel-refcount-overflowuse-after-free-in-keyrings/


Slides
------




.. note::
   To build graphics and slides from source requires recent versions of the
   following dependencies:
   
   * media-gfx/graphviz
   * dev-python/rst2pdf
   * dev-python/docutils
   * sys-devel/make


