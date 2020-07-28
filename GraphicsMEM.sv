module  RAM(	input CLOCK,
					input [16:0] CoverPixel,
					input [12:0] PlayPausePixel,
					input [13:0] TitlePixel,
					input [11:0] SpeedPixel,
					input 		 SecondSong,RW,
		
		output logic [3:0] CoverArtColor,
		output logic [23:0] TitleColor, PlayPauseColor, SpeedColor
);

// allocate mem by specifying width and total # of addresses
logic [3:0] GrenadeArtmem [0:89999]; // 4 bits - 90,000 addresses
logic [3:0] JustArtmem [0:89999]; 	//  4 bits - 90,000 addresses
logic [23:0] Speedmem [0:2499];		// 24 bits - 2,500 addresses
logic [23:0] Pausemem [0:5183];		// 24 bits - 5,184 addresses
logic [23:0] Playmem [0:5183];		// 24 bits - 5,184 addresses
logic [23:0] Titlemem [0:14999];	// 24 bits - 15,000 addresses
logic [23:0] Title2mem [0:14999];	// 24 bits - 15,000 addresses

initial
begin
	 $readmemh("GraphicsInfo/GrenadeCover.txt", GrenadeArtmem);
	 $readmemh("GraphicsInfo/JustTheWayYouAreCover.txt", JustArtmem);
	 $readmemh("GraphicsInfo/2xSpeed.txt", Speedmem);
	 $readmemh("GraphicsInfo/Pause.txt", Pausemem);
	 $readmemh("GraphicsInfo/Play.txt", Playmem);
	 $readmemh("GraphicsInfo/GrenadeTitle.txt", Titlemem);
	 $readmemh("GraphicsInfo/JustTheWayYouAreTitle.txt", Title2mem);
end

always_ff @ (posedge CLOCK) begin
	if (SecondSong) 
		CoverArtColor<= JustArtmem[CoverPixel];
	else
		CoverArtColor<= GrenadeArtmem[CoverPixel];

	if (RW)
		PlayPauseColor<= Playmem[PlayPausePixel];
	else
		PlayPauseColor<= Pausemem[PlayPausePixel];

	if (SecondSong) 
		TitleColor<= Title2mem[TitlePixel];
	else
		TitleColor<= Titlemem[TitlePixel];

	SpeedColor<= Speedmem[SpeedPixel];
	
end
endmodule
