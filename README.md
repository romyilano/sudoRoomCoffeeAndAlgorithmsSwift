# Coffee and Algorithms


## To resize images in a directory

Works like a charm!

```
for i in *.jpg; do ffmpeg -i $i -vf scale="iw/2:ih/2" ${i}; done
```