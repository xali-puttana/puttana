--[[
You need to create a directory named after your package name under /data/local/tmp. 
This directory should contain all the configuration files and other data.
The program will execute the env.lua script located in this directory. 
In env.lua, you can implement all your logic, such as printing key logs and modifying data.
We have extended Lua with the following support.
]]

--global variable
package_name 
-- package_name is string. current package name. 

--functions
dbgview(string);
set_prop(string, string);
string = get_prop(string);
set_path_keep(string);
set_path_redirect(string, string);
set_path_errno(string, integer);
set_path_readonly(string);
string, integer = get_path_redirect(string);
mkdirs(string);
copyfile(string, string);

reflect_writeBoolean(javaobj, "fieldname", val);
val = reflect_readBoolean(javaobj, "fieldname");
reflect_writeStaticBoolean(javaobj_class, "fieldname", val);
val = reflect_readStaticBoolean(javaobj_class, "fieldname");
reflect_writeInt(javaobj, "fieldname", val);
reflect_readIntn(javaobj, "fieldname");
reflect_writeStaticInt(javaobj_class, "fieldname", val);
reflect_readStaticInt(javaobj_class, "fieldname");
reflect_writeObject(javaobj, "fieldname", val);
reflect_readObjectn(javaobj, "fieldname");
reflect_writeStaticObject(javaobj_class, "fieldname", val);
reflect_readStaticObject(javaobj_class, "fieldname");
javaobj_class = reflect_getObjectClass(javaobj);
javaobj_class = reflect_findClass("java/lang/String", opt_classLoader);
global_obj = reflect_globalRef(javaobj);
reflect_deleteGlobalRef(global_obj);
reflect_callMethod(javaobj, methodname, native_signature, arg0, arg1, ...);
reflect_callStaticMethod(javaobj_class, methodname, native_signature, arg0, arg1, ...);
javaobj = reflect_newObject(javaobj_class, native_signature, arg0, arg1, ...);
javaobj = reflect_newObjectArray(javaobj_class, array_length);
javaobj = reflect_newByteArray(array_length);
javaobj = reflect_nullObject();
classloader = reflect_myClassLoader();
context = reflect_myContext();
application = reflect_myApplication();
classloader = reflect_loadDex(buffer, parent);
reflect_checkObject(javaobj);
reflect_assertObject(javaobj);

function beforeHookedMethod(param)
end
function afterHookedMethod(param)
end
hook(class_name, methodname, native_signature, beforeHookedMethod, afterHookedMethod);
hook(method, beforeHookedMethod, afterHookedMethod);
hook(class, methodname, native_signature, beforeHookedMethod, afterHookedMethod);

function beforeInvoke(param)
end
function afterInvoke(param)
end
setOverrideHandler(interface_class_name, methodname, beforeInvoke, afterInvoke);

hookBroadcastReceiver(action, function(intent)
  --you can modify intent
  end);

function before(param)
end
function after(param)
end
proxyobj = proxyObject(before, after, obj, class, opt_constructorSignature, opt_constructorParam);

--param
--param.thisObject
--param.args
--param:getResult()
--param:setResult(javaobj)
--param:getThrowable()
--param:hasThrowable()
--param:setThrowable(throwable)

--Other methods for accessing objects
javaobj.fieldname; -- accessing object variables
javaobj_class.fieldname; -- accessing class static variables
javaobj.function(); -- invoke static function
javaobj:function(); -- invoke non-static function

--Functions that must be implemented in the Lua layer for the engine to use.
function source_path()
  -- The directory where base.apk is located. base.apk is the original APK file.
  return "/sdcard/";
end
function onCreate()
  -- Application.onCreate callback
  
end  
  
