## Vlad's sloppy webm maker

A batch script to make the highest quality webms based on a set filesize limit.

### How to use it

1. Download latest version of [ffmpeg for windows](http://ffmpeg.zeranoe.com/builds/), put it in some folder.
2. Navigate to the bin folder of the download, and put the batch script there.
3. Name your video "input.mp4", place it in the same folder and run the script.
4. The output is "output.web".

### How it works

Prioritizing resolution over quality, it lowers quality then resolution in a cycle until the filesize limit has been reached.
