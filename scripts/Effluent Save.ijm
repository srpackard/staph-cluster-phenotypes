// Name Changing File                                 //
// Written by Patryck Michalik and Sydney Packard    //
// For Stewart Lab Use Only                         //
// Email: pjmichalik@wpi.edu and srpackard@wpi.edu //
////////////////////////////////////////////////////

// USER INPUT (REQUIRED) //
experiment = "PlasmaTreated_08-01-2025";
strain = "";
wells = 5; // One greater than total number of wells
samples = 6; // One greater than total number of samples
outputFolder = "C:/Users/spack/OneDrive/Desktop/ImageJ/Raw_Images/Dispersal Experiments/" + experiment +"/"
//"C:/Users/spack/Downloads/Data/" + experiment + "/";
//#C:\Users\spack\OneDrive\Desktop\ImageJ\Raw_Images\Dispersal Experiments\
// END OF USER INPUT //

// FILE SAVING CODE //
for (i = 1; i < wells; i++) { // Iterate over wells
    for (j = 1; j < samples; j++) { // Iterate over samples
        // Build the window name
        windowName = experiment + ".lif - W" + i + "S" + j;
        
        // Check if the window exists
        if (isOpen(windowName)) {
            selectWindow(windowName);
            
            // Construct the save path
            savePath = outputFolder + experiment + "_W" + i + "S" + j + ".tif";
            
            // Save the file
            run("OME-TIFF...", "save=[" + savePath + "] write_each_z_section write_each_timepoint write_each_channel use export compression=Uncompressed");
        } else {
            print("Window not found: " + windowName);
        }
    }
}
