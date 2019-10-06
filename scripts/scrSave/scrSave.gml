//Delete save file if it exists, and open a new one.
if (file_exists("HighScore.sav")) file_delete("HighScore.sav");
ini_open("HighScore.sav");

//Write high score variable
ini_write_string("HighScore","Message","So you found the file. Well done! The score is now in your hands.");
ini_write_real("HighScore","Score",argument0);

ini_close();