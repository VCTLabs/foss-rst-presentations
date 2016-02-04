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


Why A Hardened Profile Is Key To Your Embedded Security Stack
=============================================================

Abstract
--------

Modern (cyber)security engineering calls for multiple layers of defense and countermeasures, and although the issues, processes, and tools are `very well documented`_, it seems to be applied very poorly in general, as evidenced by the numerous `recent breaches`_ and theft of sensitive data.  The current mainline kernel has several different security and integrity stacks, some have been there a long time (e.g., SELinux) and others are comparatively more recent (e.g., SMACK).  This presentation focuses on adding features_ to a system that help resist security compromises and are largely complimentary to the existing security frameworks (note these are currently included in `Gentoo Hardened`_ but are usually not present in other distros), mainly PIE toolchain hardening, PAX kernel hardening, and the PAX userland tools.  PaX is a kernel patch that allows systems to be protected against buffer and heap overflows and similar attacks. PaX should be the first line of defense in hardening a system.  PIE by itself provides no additional security, but when combined with PaX in the kernel it provides a powerful tool against overflows, while SSP is entirely implemented in userland and protects against stack smashing attacks without the assistance of the kernel.  Beyond these should be another layer of access controls, e.g., SELinux, GRSEC, RSBAC, etc.


.. _very well documented: http://iase.disa.mil/Pages/index.aspx
.. _recent breaches: http://www.networkworld.com/article/3011103/security/biggest-data-breaches-of-2015.html
.. _Gentoo Hardened: https://wiki.gentoo.org/wiki/Project:Hardened
.. _features: https://wiki.gentoo.org/wiki/Hardened/PaX_Quickstart


Slides
------




.. note::
   To build graphics and slides from source requires recent versions of the
   following dependencies:
   
   * media-gfx/graphviz
   * dev-python/rst2pdf
   * dev-python/docutils
   * sys-devel/make


