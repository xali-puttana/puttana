local function loadClass_(param) 
  local args = param.args;
  local name = tostring(args[0]);
  dbgview("ClassLoader.loadClass: " .. name);
end

hook("java/lang/ClassLoader", "loadClass", "Ljava/lang/String;", loadClass_, nil);
