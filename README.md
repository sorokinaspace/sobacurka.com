*Проєкт для приватної бібліотеки.*

Get Docker image for Jekyll:

```sh
docker pull jekyll/jekyll
```

Run once before the first launch:

```sh
docker run --rm -it \
    -v "$(pwd):/srv/jekyll" \
    -v "$(pwd)/vendor/bundle:/usr/local/bundle" \
    jekyll/jekyll \
    bundle config --local path vendor
```

Launch Jekyll image:

```sh
docker run --rm -it \
    -v "$(pwd):/srv/jekyll" \
    -v "$(pwd)/vendor/bundle:/usr/local/bundle" \
    -p 4000:4000 \
    jekyll/jekyll \
    jekyll serve --watch --drafts
```