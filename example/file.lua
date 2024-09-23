
hook("java/io/File", "delete", "*", nil, function (param)
    local file = param.thisObject;
    reflect_assertObject(file);
    local path = file:getPath();
    reflect_assertObject(path);
    dbgview("File.delete: " .. path);
end
);
