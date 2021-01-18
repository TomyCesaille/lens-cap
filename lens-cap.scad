/*                                                
 * A lens cap.
 * Units in mm, default values are for
 * a PENTACON auto 2.8/135 MC lens. 
 *
 * 2021, Joris La Cancellera
 * License: CC-BY-SA
 *
 */

/* [primary] */

// Total height of the cap
height = 8; // [2:40]
// Inner (mechanical) diameter of the cap
inner_dia = 60; // [40:300]
// Wall thickness
thickness = 2.0; // [1:0.5:5]

/* [Hidden] */
$fn=100;
outer_dia = inner_dia + 2 * thickness;

/* [Code] */
difference()
{       
    cylinder(d=outer_dia, h=height, center=true);
    translate([0,0,thickness])
        cylinder(d=inner_dia, h=height, center=true);
}
