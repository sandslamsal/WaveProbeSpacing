function checkProbeSpacing(L)
    % This MATLAB function checks if the given probe spacings avoid critical conditions
    % for wave reflection analysis based on the input wavelength (L).
    %
    % How to Use:
    % Call this function with the wavelength of interest as the argument. 
    % Example: checkProbeSpacing(2) checks for a wavelength (L) of 2 meters.
    %
    % What It Does:
    % The program calculates whether the given spacings between probes (X12 and X13)
    % fall into critical spacings that should be avoided according to guidelines from
    % "The Measurement of Incident and Reflected Spectra Using a Least Squares Method" by Mansard and Funke (1980).
    % It checks if X12 or X13 corresponds to an even multiple of half the wavelength, 
    % and if X13 is an integer multiple of X12, conditions that may lead to indeterminate results.
    % The program then displays a message indicating if the spacings satisfy the theorem and avoid critical conditions.
    
    % Probe spacings based on the setup
    X12 = 0.40; % Distance between the first and second probe
    X13 = 1; % Distance from the first to the third probe
    
    % Calculate multiples of half wavelength for X12 and X13
    multiples_X12 = X12 / (L / 2);
    multiples_X13 = X13 / (L / 2);
    
    % Check for critical conditions
    criticalCondition_X12 = abs(round(multiples_X12) - multiples_X12) < 1e-5;
    criticalCondition_X13 = abs(round(multiples_X13) - multiples_X13) < 1e-5;
    
    % Check if X13 is an integer multiple of X12
    integerMultipleCondition = abs(round(X13 / X12) - (X13 / X12)) < 1e-5;
    
    % Display results
    if ~criticalCondition_X12 && ~criticalCondition_X13 && ~integerMultipleCondition
        disp('The probe spacings satisfy the theorem and avoid critical conditions.');
    else
        disp('The probe spacings do NOT satisfy the theorem and may lead to indeterminate results.');
    end
end
