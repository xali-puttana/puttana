
--This example demonstrates printing network access information.  

hook("java/net/URL", "openConnection", "*", nil, 
  function (param)
    local val = reflect_callMethod(param, "getResult", "()Ljava/lang/Object;");
    reflect_assertObject(val);
    dbgview("openConnection: " .. val);
  end
);

function hookOutputStream(param)
  local stream = param:getResult();
  if reflect_checkObject(stream) then
    local OutputStreamClass = reflect_findClass("java/io/OutputStream");
    local proxy = proxyObject(
      function (param0)
        if "public void java.io.OutputStream.write(byte[]) throws java.io.IOException" == tostring(param0.method) then
            local args = param0.args;
            local String = reflect_findClass("java/lang/String");
            dbgview("HttpsURLConnectionImpl.write: " .. String(args[0], "utf8"));
        end
      end, nil, 
      stream, OutputStreamClass
    );
    param:setResult(proxy);
  end  
end
local class = reflect_findClass("com/android/okhttp/internal/huc/HttpsURLConnectionImpl");
hook(class, "getOutputStream", "*", nil, hookOutputStream);
