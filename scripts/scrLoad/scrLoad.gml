///scrLoad()
if (file_exists("HighScore.sav")) {
	ini_open("HighScore.sav")

	return ini_read_real("HighScore","Score",0);

	ini_close();
}