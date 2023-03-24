//variables to change different parts of the tile

//number of faces on tile (helps for optimization but more needed 
//for smoother tiles -> increased processing time)
$fn = 10;

//columns = number of columns to render per row
columns = 5;
//rows = number of rows to render
rows = 2;

//Width, Height, and Length of the tiles. IN MM
//(Height and Width are the front of the tiles, length is the depth)
tileWidth = 16;
tileHeight = 26;
tileLength = 19;
//Radius of the chamfer to be added to the tile. 0-4 reccommended.
//also in MM
chamferRadius = 2;


module mahjongtile(w = tileWidth, h = tileHeight, d = tileLength, r = chamferRadius){
    minkowski(){
    cube([d-(2*r), h-(2*r), w-(2*r)], center=true);
    sphere(r);
    }
}

//Generate 10 Tiles: range 0-1 for rows (2 rows) and 0-4 for cols (5 columns)
//Row loop
for(row = [0:1:(rows-1)]){
    //shift by 30 units (mm)
    translate([0,row*30,0])
    
    //Column Loop
    for (col = [0:1:(columns-1)]){
        //Shift by 25 units (per col)
        translate([col*25,0,0])
        //Generate Tile
        mahjongtile();
    }
}
