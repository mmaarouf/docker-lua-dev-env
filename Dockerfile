FROM alpine:3.7

# lua
RUN apk add lua-dev
RUN ln -s /usr/bin/lua5.1 /usr/local/bin/lua
RUN ln -s /usr/bin/luac5.1 /usr/local/bin/luac

# lua rocks dependencies
RUN apk add gcc
RUN apk add libc-dev

# luarocks
RUN apk add luarocks
RUN ln -s /usr/bin/luarocks-5.1 /usr/local/bin/luarocks
RUN luarocks install busted
RUN luarocks install luacheck

ENTRYPOINT ["sh"]
