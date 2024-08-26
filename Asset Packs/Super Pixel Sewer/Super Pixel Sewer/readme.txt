//////////
//THANKS//
//////////

Hi there, this is Will from unTied Games! Nice to meet you.

Super huge THANK YOU for downloading this asset... It means a lot to me that you've chosen it for your game!
If you use this asset in your game, give me a shoutout if you can at @untiedgames, so I can follow along on your development journey!
Want to follow me? Sign up for my newsletter! Or follow me using the Twitter / FB / Youtube links below.
Newsletter signup: http://untiedgames.com/signup

Did you know? You can get access to ALL of my assets if you support me on Patreon!
Check it out: http://patreon.com/untiedgames

MORE LINKS:
Browse my other assets: untiedgames.itch.io/
Watch me make pixel art, games, and more: youtube.com/c/unTiedGamesTV
Follow on Facebook: facebook.com/untiedgames
Follow on Twitter: twitter.com/untiedgames
Visit my blog: untiedgames.com

Thanks again,
- Will

///////////////////
//VERSION HISTORY//
///////////////////

Version 1.0 (9/25/21)
	- Initial release

/////////////////////////
//HOW TO USE THIS ASSET//
/////////////////////////

Hello! Thank you for downloading the Super Pixel Sewer Tileset. Here are a few pointers to help you navigate and make sense of this zip file.

- In the root folder, you will find style folders. These folders correspond to each tileset color style.

- In each of the style folders, you will find a folder named "PNG". This folder contains all the objects and tiles as descriptively-named individual PNGs.

- In each of the style folders, you will also find a folder named "spritesheet". This folder contains the spritesheet, and an easy-to-parse metadata format for reading the spritesheet.
  The metadata format is: asset_name = x y w h.

- You can help make sense of the labels using the following guide, which applies to all my tilesets.

File name definitions:
	- "terrain"				Part of the tileset's terrain. The player probably stands on this.

	- "left/right/top/bottom"		The left/right/top/bottom wall or edge of the terrain. Directions ALWAYS refer to the surface normal, but if you're not sure take a look at the spritesheet!

	- "terrain_fill"			The inner part of the terrain. It's optional! You can go without it for smaller platforms, or if you want a simpler design.

	- "midground"				Tiles that should be placed behind the terrain and behind the player.

	- "midground_fill"			The inner part of the midground.

	- "shadows"				Semi-transparent shadow tiles for use above the midground layer. (Optional)

	- "_inner"				An inner corner tile. All corners not labeled "inner" are outer corners.

	- "platform"				Part of the terrain that can be used to make a Nx1 platform.

	- "pillar"				Part of the terrain that can be used to make a 1xN pillar.

	TIP: Pillars and platforms can intersect with other terrain and each other! There are special tiles that allow for platform/pillar intersection, platform/terrain intersection, and pillar/terrain intersection. Platforms can also turn into pillars and vice-versa by using the appropriate corner piece. (For example, to create an L-shaped piece out of a pillar and a platform, the corner of the L would be the terrain_platform_bottom_left.png tile.)

	- "bg", "bg1", "bg2", etc.		Background. If there's a number, a higher number indicates further back.

	- "fg", "fg1", "fg2", etc.		Foreground. If there's a number, a higher number indicates further forwards.

	- "near", "far"				Usually for backgrounds, specifies which part is closer and which part is further in the distance.

	- "_A", "_B", "_C", etc.		A suffix with a letter indicates there are multiple variants of this object. Objects with letter suffixes are almost always interchangeable, depending on the tileset.
						Don't worry if there's an "A" without a "B"! That means if I include more variants of this object in an update, you won't have to worry about tile name changes.

	- "frame0000", "frame0001", etc.	Filenames like this indicate an animation.
	  or "f0", "f1", etc.

	- "2x2", "4x4", etc.			Indicates the size of this object, in tiles.

Any questions?
Email me at contact@untiedgames.com and I'll try to answer as best I can!

-Will