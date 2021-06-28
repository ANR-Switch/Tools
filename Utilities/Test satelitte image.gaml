/**
* Name: NewModel
* Based on the internal skeleton template. 
* Author: benoitgaudou
* Tags: 
*/

model NewModel

global {
	image_file satellite0_image_file <- image_file("../includes/images/satellite.png");

	shape_file boundary0_shape_file <- shape_file("../includes/boundary.shp");

	geometry shape <- envelope(boundary0_shape_file);

	init {
		geometry f <- line([{0,0},{10,10}, {50,20}]);
		write f.area;
		write f.points;
		geometry g <- polygon([{0,0},{10,10}, {50,20}]);
		write g.area;
		write g.points;		
	}
}

experiment NewModel type: gui {
	output {
		display d type: opengl background: #black {
			image 'img' file: satellite0_image_file.path transparency: 0.5 refresh: false;			
		}
		
	}
}
