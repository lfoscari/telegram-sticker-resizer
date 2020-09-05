This bash script uses ImageMagick's `convert` to help creating thumbnails, it was born to create sticker images for Telegram.

The default values are `512x512` for the size and `thumbnails` as the destination directory, but can be changed with the `-d` and `-s` options respectively before listing the images.

If the image doesn't have the right rateo for the size, it's embedded in a bigger square with a transparent background.

### Example
I'm converting two images, the first one is a 474x474 square jpg, the second one is 960x540 rectangle png. The originals can be found in the `example` folder.
![Example](example/zerotwo.png)

### Requirements
Convert by ImageMagick, instructions on how to install [here](https://www.imagemagick.org/script/download.php).

### Install
```bash
# Clone the repository
$ git clone git@github.com:lfoscari/telegram-sticker-resizer.git

# Navigate to the directory
$ cd telegram-sticker-resizer

# Execute the script
$ ./thumb
usage: thumb [-d destination] [-s size] images...
```
If you don't want the full repository simply move the `thumb` executable anywhere in your `$PATH`.

### Notes
This script can be run on Windows Subsystem for Linux, you may need to invoke `bash` explicitly for it to function:
```
bash thumb [-d destination] [-s size] images...
```