==============================
 ELC 2016 San Diego Abstracts
==============================

A repo for ELC 2016 presentation stuff; see prebuilt directory for
PDFs or other binary output, and the source directory for source files.

BYOD? - Putting The Pieces Together For An Open Source Drone
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Abstract
--------

What is a drone?  What is a quad-copter?  What is an autopilot, and just what is
an IMU or a Kalman filter?  This presentation will describe the open source
drone architecture defined by the Ardupilot firmware, the MAVLink message
protocol, and various supported autopilot devices and peripherals.  We'll
cover all the current capabilities and pieces of the core software stack, 
s well as extended support for different vehicle platforms, computer vision
processing, cameras and image tags, and multi-vehicle swarms. Airframe options
and alternative firmware will  also be discussed, including available support
for micro-drones.

Slides
------

`prebuilt/open_source_drones.pdf <prebuilt/open_source_drones.pdf?raw=true>`_

`drones/open_source_drones.rst <drones/open_source_drones.rst?raw=true>`_

Demote those Security Bugs with a Hardened System Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Short Abstract
--------------

Although the tools and documentation have been around a long time, the industry as a whole has been woefully slow at taking security engineering seriously (even more so in the embedded world). The current mainline kernel includes several access control systems that reduce the risk of bugs escalating into high-level security compromises, such as the venerable SELinux (which is enabled by default in Android 4.4 and several "enterprise" Linux distributions).  This presentation will focus on a complementary set of security mechanisms that work independently from the overlying frameworks: PIE toolchain hardening, PAX kernel hardening, and the PAX userland tools. These technologies work together to demote whole classes of bugs from headline-grabbing remote compromise and/or data theft exploits to "mere" DoS annoyances.

Long Abstract
-------------

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
.. _DOS annoyances: https://bugs.gentoo.org/show_bug.cgi?id=572604

Audience
--------

The audience for this is very broad, from developers and devops, to system admins and integrators, as well as distribution/package maintainers and power users.  Attendees will learn the hows and whys of PAX, PIE, and SSP kernel/toolchain hardening as part of a comprehensive layered security implementation.

Benefits to the Ecosystem
-------------------------

This presentation will help existing and new engineers, system administrators, and technical managers better understand the scope of Linux security tools/frameworks and why a hardened baseline system profile is a critical piece of the overall puzzle. It will also hopefully encourage them, and the companies that they work for, to take a more comprehensive approach to system hardening and start shipping more resilient products.

Speaker Bio
-----------

(Steve Arnold) Principal Scientist at VCT Labs, and also an open source developer and mentor (Gentoo / OE / BeagleBoard.org), a contract engineering consultant, science geek, and maker/hacker.  Previous speaker/volunteer at GSoC, AMS, JANNAF IPC, SCaLE, and ELC (https://github.com/VCTLabs).  Gentoo and OpenEmbedded work (https://github.com/gentoo/arm  https://github.com/sarnold) plus upstream software maintenance.  "We make the core stuff work so others can build on it..."

Slides
------

`prebuilt/hardened_system_profile.pdf <prebuilt/hardened_system_profile.pdf?raw=true>`_

`hardened/hardened_system_profile.rst <hardened/hardened_system_profile.rst?raw=true>`_


.. note::
   To build graphics and slides from source requires recent versions of the
   following dependencies:
   
   * media-gfx/graphviz
   * dev-python/rst2pdf
   * dev-python/docutils
   * sys-devel/make


