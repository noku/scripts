## Image Downloader

It is a small script that uses `mechanize` gem for downloading images.
First it login the user with given credentials then it access the main
page of given id, and due to the arhitecture of the website it access
several web pages before it can download the image with the highest quality.
It will download all image of the source id going through every page of its gallery.

There some improvements to be made from UI side but the main purpose was to create a functional image downloader.

```
bundle exec bin/mini download 81294
```