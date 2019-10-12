FROM swift:5.1
RUN git clone https://github.com/vapor/toolbox.git
RUN swift build --package-path toolbox
ENTRYPOINT ["/toolbox/.build/debug/vapor"]
