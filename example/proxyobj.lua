
local ByteArrayInputStream = reflect_findClass("java/io/ByteArrayInputStream");

local bytes = reflect_newByteArray(10);
bytes[0] = 0x99;

local stream = ByteArrayInputStream(bytes);
local proxy = proxyObject(nil, 
    function (param)
        dbgview("proxy: " .. param.method);
        dbgview("proxy: " .. param:getResult());
        param:setResult(java_int(12));
    end,
    stream, ByteArrayInputStream, "([B)V", bytes
);
assert(proxy:read() == 12);
