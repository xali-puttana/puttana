
taskid = 0;
-- taskid is integer. current task id.  
-- each id corresponds to an independent isolated environment.  
-- /data/local/tmp/$package_name$/env.id

function env_taskid()
    local path = "/data/local/tmp/" .. package_name .. "/env.id";
    local file = io.open(path, "r");
    if file then
        local buf = file:read("*a");
        taskid = tonumber(buf);
        file:close();
    end
end

env_taskid();
dbgview("isolated: " .. package_name .. " " .. taskid);

-- Functions required to implement puttana  
function source_path()
  -- It can be the tmp directory or the sdcard directory; 
  -- the directory permission requirements vary across different system versions.
	return "/data/local/tmp/" .. package_name .. "/" .. taskid .. "/app/" .. package_name .. "/";
end

function base_apk()
  -- puttana will load base.apk from the source_path directory. 
	return source_path() .. "base.apk";
end

-- Other directories need to be manually redirected in the script.  
-- for example: 
set_path_redirect("/sdcard/", sdcard_path());
