Welcome to the documents that make up VisualTalk - a live music visualisation 
software built in Ableton and Processing. 

Please follow these steps to get it up and running:

1- MAKE SURE YOU HAVE ABLETON, PROCESSING 3 AND MAX4LIVE INSTALLED ON YOUR 
COMPUTER 

https://processing.org/download
https://www.ableton.com/ 

Use these links and follow the download steps

2- OPEN UP MAX AND INSTALL FLUCOMA AND ZSA DESCRIPTORS. 
Then make sure these libraries are installed on Max on your device. 
You can use these links or download from the Max library by searching them. 

https://www.flucoma.org/ 
http://www.e--j.com/index.php/download-zsa/ 

3- OPEN UP THE FOLDER "zsa_send_many_interaction" AND OPEN THE FILE WITHIN IN, 
"zsa_send_many_interaction.pde".
It will automatically boot up Proccessing. 

4- OPEN THE ABLETON PROJECT FOLDER "VisualTalk Project" AND OPEN THE ABLETON FILE, 
"VisualTalk.als". You will need to save this file within a 'Project Folder' and 
then replace the 'Presets' and 'Samples' folders which are in the project folder you 
created with the ones in this repo. When you are in the Ableton file, scroll down to one of 
the tracks labelled 8000-8007 and double click on it. It will tell you that the 
MAX instrument cannot be found. Click on the automatic search button and it 
should retrieve all the instruments from the presets folder you dragged in. 
The same should happen if there are any samples in the file that are missing.
Some samples won't be able to be retrieved becuase they were too large to load onto 
GitHub. But feel free to drag some new ones in from your own library, or 
use the ones in the folder. 

5- SIMPLY PRESS THE GREEN RUN BUTTON IN THE PROCESSING IDE. A rectangular screen
with a white background and grey dividing lines should pop up

6- PRESS PLAY ON ABLETON TO CREATE SOME MUSIC. You can only use audio samples, 
so drag in samples of audio or record in sounds. 
Make sure the tracks are in the right order from 8000T - 8007T otherwise the 
solo function will solo the wrong tracks. 

7- YOU SHOULD SEE EACH DIFFERENT TRACK REPRESENTED IN THE DIFFERENT SECTIONS OF 
THE PROCESSING SKETCH. 

If you click on a track section in the sketch once you will solo the track. 
Click again to unsolo it. 

You can only create sound in the eight tracks 8000T to 8007T. You can only 
record and manipulate audio files (not MIDI) in these tracks. 

I've loaded in some tracks to play around with - have fun! 

The Processing code is all within the IDE and the Max4Live code is 
within the Max Patches on the tracks within the Ableton file. 
