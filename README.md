# Wave Probe Spacing Checker

This repository contains the MATLAB function `checkProbeSpacing`, which checks the spacing between wave probes to avoid critical conditions that could affect wave reflection analysis.

## Functionality

The `checkProbeSpacing` function evaluates the spacing between probes based on the wavelength to ensure they do not fall into critical spacings as outlined by "The Measurement of Incident and Reflected Spectra Using a Least Squares Method" by Mansard and Funke (1980). It is essential to avoid spacings where the distances are even multiples of half the wavelength or where one distance is an integer multiple of another, as these can lead to indeterminate results in wave analysis.

## How to Use

To use this function, simply call it with the wavelength of interest. For example:

```matlab
checkProbeSpacing(2);
