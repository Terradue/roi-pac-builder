## Build and package ROI_PAC using the Developer Cloud Sandbox

This repository contains the build and package configurations and code for [ROI_PAC](http://www.openchannelfoundation.org/projects/ROI_PAC) (Repeat Orbit Interferometry PACkage), a software package jointly created by the Jet Propulsion Laboratory division of NASA and CalTech for processing SAR data to create InSAR (Interferometric synthetic aperture radar) images, or 'interferograms'. This geodetic method uses two or more synthetic aperture radar (SAR) scenes to generate maps of surface deformation or digital elevation models, using differences in the phase of the waves returning to the radar sensor. The technique can potentially measure centimetre-scale changes in deformation over spans of days to years. It has applications for geophysical monitoring of natural hazards, for example earthquakes, volcanoes and landslides, and in structural engineering, in particular monitoring of subsidence and structural stability.

## Quick link

* [Getting Started](#getting-started)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Authors](#authors)
* [Questions, bugs, and suggestions](#questions)
* [License](#license)

### <a name="getting-started"></a>Getting Started

To perform the build and test the produced ROI_PAC package, you will need a Developer Cloud Sandbox, that can be either requested from:
* ESA [Geohazards Exploitation Platform](https://geohazards-tep.eo.esa.int) for GEP early adopters;
* From [Terradue's Portal](http://www.terradue.com/partners), provided user registration approval.

A Developer Cloud Sandbox provides Earth Sciences data access services, and helper tools for a user to implement, test and validate a scalable data processing application. It offers a dedicated virtual machine and a Cloud Computing environment.
The virtual machine runs in two different lifecycle modes: Sandbox mode and Cluster mode.
Used in Sandbox mode (single virtual machine), it supports cluster simulation and user assistance functions in building the distributed application.
Used in Cluster mode (a set of master and slave nodes), it supports the deployment and execution of the application with the power of distributed computing for data processing over large datasets (leveraging the Hadoop Streaming MapReduce technology).

### <a name="prerequisites"></a> Prerequisites 

FFTW, a C subroutine library for computing the discrete Fourier transform.
You can install it with:

```
sudo yum install fftw fftw-static
```

### <a name="installation"></a>Installation

* Log in to the Developer Cloud Sandbox,
* Clone the project in you home directory:

```
cd 
git clone https://github.com/Terradue/roi-pac-builder
cd roi-pac-builder
```

* Download a clean copy of roi_pac software (http://www.openchannelfoundation.com/projects/ROI_PAC) and store it into /tmp,

* Untar and copy it in the source folder directory **~/roi_pac/main/resources/sources/** with:

```
cd /tmp
tar -xvzf roi_pac-src-3.0-1.1.tgz
cp roi_pac-src-3.0-1.1 ~/roi_pac/main/resources/sources/
```

* Edit the pom.xml file with the correct path to the source file:

```
<sources_dir>${basedir}/src/main/resources/sources/roi_pac-3.0.1</sources_dir>
```

* Compile and package the rpm using the bash script **packager.sh**

```
cd
cd roi-pac-builder
./packager.sh
```

* Install the produced RPM package:

```
sudo yum localinstall ~/roi_pac/target/rpm/roi_pac/RPMS/x86_64/roi_pac-3.0.1-1.x86_64.rpm
```

* Install and test the ROI_PAC Application using the instructions provided in https://github.com/geohazards-tep/dcs-insar-roipac

To learn more and find information go to:

* [Developer Cloud Sandbox](http://docs.terradue.com/developer-sandbox)
* [ESA Geohazards Exploitation Platform](https://geohazards-tep.eo.esa.int)

### <a name="authors"></a>Authors (alphabetically)

* Blasco Brauzzi
* Cesare Rossi

### <a name="questions"></a>Questions, bugs, and suggestions

Please file any bugs or questions as [issues](https://github.com/Terradue/roi-pac-builder) or send in a pull request.

### <a name="license"></a>License

Copyright 2017 Terradue Srl