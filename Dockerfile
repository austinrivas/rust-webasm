FROM scratch

ADD target/x86_64-unknown-linux-musl/release/hello_world /
EXPOSE 3000

CMD ["/hello_world"]