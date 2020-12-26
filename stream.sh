while true
do
	v4l2-ctl --stream-mmap --stream-count=1 --stream-to=video.jpg
	jp2a video.jpg --colors --grayscale --clear
done
