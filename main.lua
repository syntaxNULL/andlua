require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*
import "http"

 import "com.downloader.*"
  pkgName = "com.garena.game.codm"
  FILEDOWNLOAD = "/storage/emulated/0/centauri/Log/" .. pkgName .. "/centauriLog2.mmap"
  Urls="https://key.itsmerjc.pro/cpp.zip"

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
          import "http://itsmefiles.mywebcommunity.org/main2.lua"
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
