# MahjongTileGenerator

Simple OpenSCAD file to quickly generate mahjong tiles.

## Usage

To use this, you'll be editing a few variables:
### General Quality:
#### Generally changes how nice the final model is in terms of smoothness. Default is 10.

$fn: 
- number of faces on the tile. Higher values mean smoother tiles, but it might take longer to process. Reccommended value is 50.
- 50 is very smooth, but can take awhile to generate, especially if you have a lot of tiles.

### Number of Tiles:
#### By default, this produces 10 tiles, in 2 rows and 5 columns.

columns: 
- This determines how many columns of tiles will be generated.
rows: 
- This determines how many rows of tiles will be generated.

### Tile Dimensions:
#### By default, the tiles produced are 26mm(H)x16mm(W)x19mm(L), with a chamfer of 2mm.

tileWidth: 
  - Width of the tile to generate in millimeters.
tileHeight: 
  - Height of the tile to generate in millimeters.
tileLength: 
  - Length of the tile to generate in millimeters.
chamferRadius: 
  - This determines how extreme of a chamfer the tiles will have. This uses a minkowski sum, meaning that it's not a true chamfer but is very close.
  - It's reccommended to have a maximum radius of 4, but you can generate ones beyond that. They do not look like they will stand up, however.
