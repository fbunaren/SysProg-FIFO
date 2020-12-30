while true
do
	v4l2-ctl --stream-mmap --stream-count=1 --stream-to=video.jpg
	img2txt.py video.jpg --ansi --color --maxLen=80 >  video.txt
	#jp2a video.jpg --grayscale --output=video.txt
	clear
	cat video.txt
done
