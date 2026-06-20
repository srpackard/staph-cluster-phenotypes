Welcome to the Staphylococcus epidermidis detached cell cluster phenotypes github repository!
Here is some important information related to this project:

Image files are available upon request. Please email ejstewart@wpi.edu to request files.

The python jupyter notebooks read .tiff file stacks in folders. The notebook will need 
to be updated to your file paths. The original microscopy image files are .LIF files. 
There is an ImageJ macro script included under "scripts" that can be used to 
iteratively save each plane of the .LIF files into separate folders of .tiff images
for each image volume. There are 20 image volumes per .LIF file, with each image volume 
named sequentially "WXSY" with X = [1, 2, 3, 4] and Y = [1, 2, 3, 4, 5], with W corresponding to
which well (from an 8-well chambered coverglass dish) the image was taken in, and which  
sample, S, within the well the image is.

