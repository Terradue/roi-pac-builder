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

To build, package and test the ROI_PAC software using this automatic procedure, you will need a Developer Cloud Sandbox, that can be either requested from:
* ESA [Geohazards Exploitation Platform](https://geohazards-tep.eo.esa.int) for GEP early adopters;
* From [Terradue's Portal](http://www.terradue.com/partners), provided user registration approval.

A Developer Cloud Sandbox provides Earth Sciences data access services, and helper tools for a user to implement, test and validate a scalable data processing application. It offers a dedicated virtual machine and a Cloud Computing environment.
The virtual machine runs in two different lifecycle modes: Sandbox mode and Cluster mode.
Used in Sandbox mode (single virtual machine), it supports cluster simulation and user assistance functions in building the distributed application.
Used in Cluster mode (a set of master and slave nodes), it supports the deployment and execution of the application with the power of distributed computing for data processing over large datasets (leveraging the Hadoop Streaming MapReduce technology).

### <a name="prerequisites"></a> Prerequisites 

* An [Open Channel Foundation](http://www.openchannelfoundation.com/) account, to download the ROI_PAC sources, 

### <a name="installation"></a>Installation

* Log in to the Developer Cloud Sandbox,
* Clone the project in you home directory:

```
cd 
git clone https://github.com/Terradue/roi-pac-builder
cd roi-pac-builder
```

* Download a clean copy of the ROI_PAC sources from http://www.openchannelfoundation.com/projects/ROI_PAC and store it into the */tmp* location on the Sandbox,

* Untar and copy the ROI_PAC sources in the source folder directory *~/roi-pac-builder/main/resources/sources/* with:

```
cd /tmp
tar -xvzf roi_pac-src-3.0.1.tgz
cp -r roi_pac-src-3.0.1 ~/roi-pac-builder/src/main/resources/sources/
```

* Install FFTW, a C subroutine library for computing the discrete Fourier transform:

```
sudo yum install fftw fftw-static -y
```

* Compile and package the RPM package using the bash script `packager.sh`. Type:

```
cd
cd roi-pac-builder
./packager.sh
```

* Install the RPM package with:

```
sudo yum localinstall ~/roi_pac/target/rpm/roi_pac/RPMS/x86_64/roi_pac-3.0.1-1.x86_64.rpm
```

* Install and test the ROI_PAC Application, named _dcs-insar-roipac_, using the instructions provided in https://github.com/geohazards-tep/dcs-insar-roipac.

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
