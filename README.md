Welcome to the Staphylococcus epidermidis detached cell cluster phenotypes github repository!
Here is some important information related to this project:

This workflow is used for image analysis in the following peer-reviewed manuscript: 
        Packard, S. R.; Bulacan, G.; Peiris, B.; Paffenroth, R.; and Stewart, E.J. “Biophysical properties and 
        phenotypes of cell clusters detached from Staphylococcus epidermidis biofilms after matrix-targeted disruption.” 
        Colloids and Surfaces B: Biointerfaces. (2026). https://doi.org/10.1016/j.colsurfb.2026.115620

Image files are available upon request. Please email ejstewart@wpi.edu to request files.

The python jupyter notebooks read .tiff file stacks in folders. The notebook will need 
to be updated to your file paths. 
        The original microscopy image files are .LIF files. 
        There is an ImageJ macro script included under "scripts" that can be used to 
        iteratively save each plane of the .LIF files into separate folders of .tiff images
        for each image volume. To download ImageJ (I recommend Fiji): 
        https://imagej.net/downloads

There are 20 image volumes per .LIF file, with each image volume  named sequentially 
"WXSY" with X = [1, 2, 3, 4] and Y = [1, 2, 3, 4, 5], with W corresponding to
which well (from an 8-well chambered coverglass dish) the image was taken in, and which 
sample, S, within the well the image is.

Blender scripts are used to create 3D renderings of cell clusters from the 3D coordinates of 
cell centroids identified from the python scripts. There is a python script that automatically 
searches for cell clusters that fit a given criteria 
(i.e. the approximate physical properties of each k-means phenotype)

The scripts primarily use the following sources:
        [1] Allan, D. B., Caswell, Thomas, Keim, Nathan C.,  van der Wel, Casper M.,  Verweji, Ruben W. soft-matter/trackpy: Trackpy v0.5.0 (v0.5.0). 2021. DOI: https://doi.org/10.5281/zenodo.4682814.
        [2] Crocker, J. C.; Grier, D. G. Methods of Digital Video Microscopy for Colloidal Studies. Journal of Colloid and Interface Science 1996, 179 (1), 298–310. DOI: https://doi.org/10.1006/jcis.1996.0217.
        [3] Ramasubramani, V.; Dice, B. D.; Harper, E. S.; Spellings, M. P.; Anderson, J. A.; Glotzer, S. C. freud: A software suite for high throughput analysis of particle simulation data. Computer Physics Communications 2020, 254, 107275. DOI: https://doi.org/10.1016/j.cpc.2020.107275
        [4] Pedregosa, F.; Varoquaux, G.; Gramfort, A.; Michel, V.; Thirion, B.; Grisel, O.; Blondel, M.; Prettenhofer, P.; Weiss, R.; Dubourg, V.; et al. Scikit-learn: Machine Learning in Python. Journal of Machine Learning Research 2011, 12, 2825––2830.
