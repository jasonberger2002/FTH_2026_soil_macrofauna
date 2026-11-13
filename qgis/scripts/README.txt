ref_trees includes tree coordinates (from the Paracou inventory) and field measures for up to 3 reference trees per monolith. They were used to reconstruct precise sampling locations of our monoliths. Tree IDs are obscured since the Paracou inventory is not publicly available and only coordinates kept which do not reveal information about the identity of the trees.

sampling_locations.r uses the ref_trees file to calculate sampling locations (finding the center of points if there is more than one reference tree defined per monolith). 

calculated_sampling_coordinates_UTM is the output of the script, containing all monoliths and their calculated Northing and Easting, which is used to present locations of monoliths on our QGIS maps.