FROM openresty/openresty:alpine-fat

COPY . /tmp/sources
RUN true \
 && cd /tmp/sources \
 && luarocks make lua-resty-busted-master-0.rockspec \
 && luacheck src/ \
 && resty_busted src/ \
 && cd / \
 && rm -rf /tmp/* \
 && true
