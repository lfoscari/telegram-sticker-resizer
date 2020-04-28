This bash script uses ImageMagick's `convert` to help creating thumbnails, it was born to create sticker images for Telegram.

The default values are `512x512` for the size and `./thumb` as the destination directory, but can be changed with the `-d` and `-s` options respectively. If the image doesn't have the right rateo for the size, it's embedded in a bigger rectangle with a transparent background.

### Example
I'm converting two images, the first one is a 474x474 square jpg, the second one is 960x540 rectangle png. The result in both case is a 512x512 png, the originals can be found in the `example` folder.
![Example](example/zerotwo.png)

### Requirements
Convert by ImageMagick, instructions on how to install [here](https://www.imagemagick.org/script/download.php).

### Install
```bash
# Clone the repository
git clone git@github.com:lfoscari/telegram-sticker-resizer.git

# Navigate to the directory
cd telegram-sticker-resizer

# Execute the script
./thumb ...
```
If you don't want the full repository in anywhere simply move the `thumb` executable anywhere in your `$PATH`.
```bash
thumb ...
```
