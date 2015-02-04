## Vlad's sloppy webm maker

A batch script to make the highest quality webms based on a set filesize limit.

Maybe someday I'll make a neater version with a GUI. (I did now, check my [other repo](https://github.com/Vladislav-G/WebmMaker).)

### How to use it

1. Download latest version of [ffmpeg for windows](http://ffmpeg.zeranoe.com/builds/), put it in some folder.
2. Navigate to the bin folder of the download, and put the batch script there.
3. Name your video `input.mp4`, place it in the same folder and run the script.
4. The output is `output.webm` in the same folder.

### How it works

Prioritizing resolution over quality, it lowers quality then resolution in a cycle until the filesize limit has been reached.

### Custom parameters

- `startres` = the highest resolution to begin with. 0 means original resolution, any higher is original res * (1 - 0.%your value%)
- `startquality` = the quality to begin with, because original resolution and highest quality will likely never fit the filesize limit so skip that
- `qmin` = maximum quality, 0 is highest but just leave it at 10 really
- `qmax` = minimum quality, putting this higher than 30 makes it start to look real bad
- `sizelimit` = filesize limit in BYTES
- `inputname` = filename for input, must be an mp4 file
- `outputname` = filename for output, it will be a webm
