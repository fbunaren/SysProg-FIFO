while true
do
	v4l2-ctl --stream-mmap --stream-count=1 --stream-to=file.jpg
	jp2a file.jpg --colors --grayscale --clear  --output=video.txt
	cat video.txt
done
