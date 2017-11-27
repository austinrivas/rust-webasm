# Rust Web Assembly Starter

## Goals

The goal of this project is to create a Rust web server with no dependencies that hosts a small Web Assembly front end client.

## Compiling

To compile the application run `./compile.sh`.

The script will build a [rust-musl-builder](https://github.com/emk/rust-musl-builder) docker container to build a dependency free binary of tha app.

The compiled application can be found in `./target/x86_64-unknown-linux-musl/release/hello_world`.

You can test the application was built by running `ls -lh target/x86_64-unknown-linux-musl/release/hello_world`.

## Building Image

To build a docker image that will run the application run `./build.sh`.

The docker image will be built from `scratch` and run the application found at found in `./target/x86_64-unknown-linux-musl/release/hello_world`.

The docker image will expose the application on port `3000`.

## Run Container

To run the docker container for the application run `./run.sh`.

The script uses `docker run` to bind port `3000` on the host to port `3000` in the container.

You can test the application is running by running `curl localhost:3000`.

## References

* [Rust wasm32 Announcement](https://www.hellorust.com/news/native-wasm-target.html)
* [Rust wasm32 HN Thread](https://news.ycombinator.com/item?id=15780702)
* [WebAssembly Hello Rust Repo](https://github.com/badboy/hellorust)
* [Building Minimal Docker Containers for Rust Applications](https://blog.semicolonsoftware.de/building-minimal-docker-containers-for-rust-applications/)
* [Inside Docker's "FROM scratch"](https://embano1.github.io/post/scratch/)