
--This example demonstrates printing network access information.  

hook("java/net/URL", "openConnection", "*", nil, 
  function (param)
    local val = reflect_callMethod(param, "getResult", "()Ljava/lang/Object;");
    reflect_assertObject(val);
    dbgview("openConnection: " .. val);
  end
);
