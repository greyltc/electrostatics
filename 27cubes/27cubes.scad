subcubex=1;
subcubey=1;
subcubez=1;

// make a cube of cubes
for (k=[0:2], z_shift=k*subcubez){
    for (j=[0:2], y_shift=j*subcubey){
        for (i=[0:2], x_shift=i*subcubex){
            translate([x_shift, y_shift, z_shift]) cube([subcubex, subcubey, subcubez]);
        }
    }
}
