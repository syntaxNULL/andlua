require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "android.graphics.Typeface"
import "android.graphics.Paint"
import "android.net.*"
import "android.provider.Settings"
import "android.content.Context"
import "android.view.animation.*"
import "java.io.File"
import "http"

layout={
  LinearLayout;
  layout_width="fill";
  background="res/bg.jpeg";
  layout_height="fill";
  gravity="center";
  orientation="vertical";
  {
    CardView;
    layout_width="90%w";
    backgroundColor="0xFF212121";
    radius="10dp";
    layout_marginRight="40dp";
    layout_marginLeft="40dp";
    {
      LinearLayout;
      layout_width="match_parent";
      layout_height="match_parent";
      gravity="center";
      orientation="vertical";
      {
        TextView;
        layout_margin="10dp";
        textColor="0xFFFFFFFF";
        text="   ";
      };
      {
        CardView;
        layout_width="80%w";
        layout_height="55dp";
        layout_margin="10dp";
        id="btnUsername";
        backgroundColor="0xFFFF0000";
        {
          EditText;
          hintTextColor="0xFFFFFFFF";
          textColor="0xFFFFFFFF";
          layout_width="match_parent";
          background="none";
          layout_height="match_parent";
          hint="Username";
          id="txtUsername";
          gravity="center";
        };
      };
      {
        Button;
        textColor="0xFFFFFFFF";
        text="Login";
        layout_width="80%w";
        layout_height="match_parent";
        id="btnLogin";
      };
      {
        TextView;
        layout_margin="10dp";
        textColor="0xFFFFFFFF";
        text="  ";
      };
    };
  };
};

-------PARAMETER----------

activity.setTheme(R.AndLua1)
activity.setContentView(loadlayout(layout))
activity.actionBar.hide()
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF000000);

function Waterdropanimation(Controls,time)
  import "android.animation.ObjectAnimator"
  ObjectAnimator().ofFloat(Controls,"scaleX",{1,.8,1.3,.9,1}).setDuration(time).start()
  ObjectAnimator().ofFloat(Controls,"scaleY",{1,.8,1.3,.9,1}).setDuration(time).start()
end

function CircleButton(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(2, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function CircleButton3(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radii, radii, radiu, radiu, radiu, radiu, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(5, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function CircleButtonA(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, 0, 0, 0, 0})
  drawable.setColor(InsideColor)
  drawable.setStroke(5, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function CircleButton1(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radii, radii, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(4, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function CircleButton2(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({20, 20, 20, 20, 0, 20, 0, 20})
  drawable.setColor(InsideColor)
  drawable.setStroke(2, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function CircleButtonY(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, 0, 0, 0, 0})
  drawable.setColor(InsideColor)
  drawable.setStroke(5, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

CircleButton(btnLogin,0xFFFF0000,20,0xFFFF0000)
CircleButton(btnUsername,0x00000000,20,0xFFFF0000)

--[[function FontN(FontN1,file) FontN1.setTypeface(Typeface.createFromFile(File(file)))
end

FontN(txtUsername,activity.getLuaDir().."/ttf/font.ttf")
FontN(btnLogin,activity.getLuaDir().."/ttf/font.ttf")
]]
btnLogin.onClick=function()
  Waterdropanimation(btnLogin,100)
  main2()
end

function main2()
  require "import"
  import "android.app.*"
  import "android.os.*"
  import "android.widget.*"
  import "android.view.*"
  import "android.content.*"
  import "android.graphics.Typeface"
  import "android.graphics.Paint"
  import "android.net.*"
  import "android.provider.Settings"
  import "android.content.Context"
  import "android.view.animation.*"
  import "AndLua"
  import "http"
  import "java.io.File"

  layout={
    LinearLayout;
    layout_height="700%h";
    orientation="vertical";
    layout_width="fill";
    id="bg";
    {
      FrameLayout;
      background="res/bg.jpeg";
      layout_height="fill";
      layout_width="fill";
      {
        FrameLayout;
        layout_height="fill";
        layout_width="fill";
        id="n";
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_height="wrap";
        layout_width="-1";
        gravity="center";
        --layout_marginTop="90dp";
        layout_gravity="center";
        {
          TextView;
          textColor="0xFFFFFFFF";
          text="It'smeRJC+ Injector";
          TextSize="35";
          id="text0";
          layout_gravity="center";
        };
        {
          TextView;
          textColor="0xFFFFFFFF";
          layout_marginLeft="55dp";
          text="Develop by itsmeRJC";
          textSize="10";
          id="text1";
          layout_gravity="center";
        };
        {
          TextView;
          layout_margin="1dp";
          text="  ";
        };
        {
          Button;
          textColor="0xFFFFFFFF";
          text="Start Cheat";
          layout_width="70%w";
          layout_height="6%h";
          id="start";
        };
        {
          TextView;
          layout_margin="1dp";
          text="  ";
        };
        {
          Button;
          textColor="0xFFFFFFFF";
          text="Telegram";
          layout_width="60%w";
          layout_height="6%h";
          id="tg";
        };
        {
          TextView;
          layout_margin="1dp";
          text="  ";
        };
        {
          Button;
          textColor="0xFFFFFFFF";
          text="Exit";
          layout_width="50%w";
          layout_height="6%h";
          id="exit";
        };
        {
          TextView;
          layout_margin="1dp";
          text="  ";
        };
      };
    };
  };


  layout2={
    LinearLayout;
    layout_height="wrap";
    layout_width="wrap";
    {
      CardView;
      layout_height = "wrap";
      layout_width = "wrap";
      background="transparent";
      id="menu";
      {
        LinearLayout;
        layout_height = "wrap";
        layout_width = "wrap";
        Orientation="vertical";
        {
          LinearLayout;
          orientation="horizontal";
          id="win_mainview1",
          layout_height="37dp";
          layout_width="83%w";
          background="transparent",
          {

ImageView;
            id="img1";
            layout_width="65";
            layout_height="65";
            layout_marginLeft="7dp";
            layout_gravity="left|center";
            padding="3";
            src="ic_to_top.png";
            colorFilter="0xffffffff";
          };
          {
            TextView;
            textColor="0xFFFFFFFF";
            textSize="13dp";
            layout_marginLeft="10dp";
            text="iRaiz V2 [FREE INJECTOR]";
            layout_gravity="center";
            gravity="center";
            id="win_move";
          };
        };

        {
          LinearLayout;
          Orientation="vertical";
          layout_height = "200dp";
          layout_width = "fill";
          visibility="gone";
          id="cheatMenu";
          {
            LinearLayout;
            id="menuu";
            Orientation="vertical";
            layout_height = "fill";
            layout_width = "fill";
            layout_gravity="center";
            padding="5dp";
            {
              HorizontalScrollView;
              layout_width="wrap_content";
              layout_height="38dp",
              layout_gravity="center";
              id="QQ";
              {
                LinearLayout;
                layout_height="-1";
                layout_width="-1";
                orientation="horizontal";
                background="transparent";
                {
                  TextView;
                  text="BYPASS MENU";
                  id="menu1",
                  layout_gravity="center";
                  gravity="center";
                  textSize="11dp";
                  textColor="0xFFFFFFFF";
                  layout_height="4.2%h";
                  layout_width="35%w";
                };
                {
                  LinearLayout;
                  layout_height=".5%h";
                  layout_width="2.2%w";
                  background="transparent",
                };
                {
                  TextView;
                  text="MEMORY FEATURES";
                  id="menu2",
                  textSize="11dp";
                  layout_gravity="center";
                  gravity="center";
                  textColor="0xFFFFFFFF";
                  background="#ff252525";
                  layout_height="4.2%h";
                  layout_width="35%w";
                };
              };
            };

            {
              LinearLayout,
              layout_height = "0.6dp",
              layout_width = "fill",
              backgroundColor = "0xFFFFFFFF",
              layout_marginTop="5.5dp";
              layout_marginLeft = "9dp",
              layout_marginRight = "9dp",
            },
            {
              LinearLayout;
              layout_height="0.5%h";
              layout_width="fill";
            };
            {
              PageView,
              id="pg",
              layout_width="fill",
              layout_height="fill",
              pages={
                {
                  LinearLayout;
                  orientation="vertical";
                  padding="5";
                  {
                    ScrollView;
                    layout_width="fill_parent";
                    layout_height="fill",
                    layout_gravity="center_horizontal";
                    {
                      LinearLayout;
                      layout_height="-1";
                      layout_width="-1";
                      orientation="vertical";
                      {
                        LinearLayout;
                        id="_drawer_header";
                        layout_height="-2";
                        layout_width="-1";
                        orientation="vertical";
                        {
                          LinearLayout;

layout_height="-1";
                          layout_width="-1";
                          orientation="vertical";
                          padding="0";
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="10";
                            layout_width="-1";
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";

                            {
                              CheckBox;
                              text="Fix Crash";
                              textColor="0xFFFFFFFF";
                              id="fixcrash";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_width="25%w";
                              layout_height="wrap";
                              layout_marginBottom="3dp";
                            };
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";

                            {
                              CheckBox;
                              text="Bypass Logo";
                              textColor="0xFFFFFFFF";
                              id="logo";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";

                            {
                              CheckBox;
                              text="Bypass Lobby";
                              textColor="0xFFFFFFFF";
                              id="lobby";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                          };
                        };
                      };
                    };
                  };
                };

                {
                  LinearLayout;
                  orientation="vertical";
                  padding="5";
                  {
                    ScrollView;
                    layout_width="fill_parent";
                    layout_height="fill",
                    layout_gravity="center_horizontal";
                    {
                      LinearLayout;
                      layout_height="-1";
                      layout_width="-1";
                      orientation="vertical";
                      {
                        LinearLayout;
                        id="_drawer_header";
                        layout_height="-2";
                        layout_width="-1";
                        orientation="vertical";
                        {
                          LinearLayout;
                          layout_height="-1";
                          layout_width="-1";
                          orientation="vertical";
                          padding="0";

{
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="10";
                            layout_width="-1";
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";
                            {
                              CheckBox;
                              text="Wall Charm";
                              textColor="0xFFFFFFFF";
                              id="wallhack";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="Spec Tag";
                              textColor="0xFFFFFFFF";
                              id="spectag";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="Dark Mode";
                              textColor="0xFFFFFFFF";
                              id="darkmode";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";
                            {
                              CheckBox;
                              text="Quck Scope";
                              textColor="0xFFFFFFFF";
                              id="fastscope";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="Quick Shot";
                              textColor="0xFFFFFFFF";
                              id="fastshot";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="Bullet Track";
                              textColor="0xFFFFFFFF";
                              id="bullettrack";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };

};
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";
                            {
                              CheckBox;
                              text="Aim Assist";
                              textColor="0xFFFFFFFF";
                              id="assist";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="Aimbot Lock";
                              textColor="0xFFFFFFFF";
                              id="lock";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="No smoke";
                              textColor="0xFFFFFFFF";
                              id="nosmoke";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                          };
                          {
                            LinearLayout;
                            orientation="horizontal";
                            layout_height="wrap";
                            layout_width="wrap";
                            {
                              CheckBox;
                              text="No Spread";
                              textColor="0xFFFFFFFF";
                              id="nospread";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="No Reload";
                              textColor="0xFFFFFFFF";
                              id="noreload";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                            {
                              CheckBox;
                              text="No Recoil";
                              textColor="0xFFFFFFFF";
                              id="norecoil";
                              layout_gravity="center";
                              textSize="11.5sp";
                              layout_marginBottom="3dp";
                              layout_width="25%w";
                              layout_height="wrap";
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };

  minlay2={
    LinearLayout;
    layout_width="20dp";
    layout_height="30dp";
    id="jumpmenu";
    {
      ImageView;
      layout_width="50dp";
      src="a.png";
      id="Win_minWindow11";
      layout_height="50dp";
    };
  };
  -------PARAMETER----------

activity.setTheme(R.AndLua1)
  activity.setContentView(loadlayout(layout))
  activity.actionBar.hide()
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF000000);

  LayoutVIP1=activity.getSystemService(Context.WINDOW_SERVICE)
  HasFocus=false
  WmHz1=WindowManager.LayoutParams()
  if Build.VERSION.SDK_INT >= 26 then WmHz1.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
   else WmHz1.type =WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
  end
  import "android.graphics.PixelFormat"
  WmHz1.format =PixelFormat.RGBA_8888
  WmHz1.flags=WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE
  WmHz1.gravity = Gravity.CENTER
  WmHz1.x = 0
  WmHz1.y = 0
  WmHz1.width = WindowManager.LayoutParams.WRAP_CONTENT
  WmHz1.height = WindowManager.LayoutParams.WRAP_CONTENT
  mainWindow1 = loadlayout(layout2)
  isMax1=true

  function menu.OnTouchListener(v,event)
    if event.getAction()==MotionEvent.ACTION_DOWN then
      firstX=event.getRawX()
      firstY=event.getRawY()
      wmX=WmHz1.x
      wmY=WmHz1.y
     elseif event.getAction()==MotionEvent.ACTION_MOVE then
      WmHz1.x=wmX+(event.getRawX()-firstX)
      WmHz1.y=wmY+(event.getRawY()-firstY)
      LayoutVIP1.updateViewLayout(mainWindow1,WmHz1)
     elseif event.getAction()==MotionEvent.ACTION_UP then
    end return true
  end
  function win_move.OnTouchListener(v,event)
    if event.getAction()==MotionEvent.ACTION_DOWN then
      firstX=event.getRawX()
      firstY=event.getRawY()
      wmX=WmHz1.x
      wmY=WmHz1.y
     elseif event.getAction()==MotionEvent.ACTION_MOVE then
      WmHz1.x=wmX+(event.getRawX()-firstX)
      WmHz1.y=wmY+(event.getRawY()-firstY)
      LayoutVIP1.updateViewLayout(mainWindow1,WmHz1)
     elseif event.getAction()==MotionEvent.ACTION_UP then
    end return true
  end

  function Waterdropanimation(Controls,time)
    import "android.animation.ObjectAnimator"
    ObjectAnimator().ofFloat(Controls,"scaleX",{1,.8,1.3,.9,1}).setDuration(time).start()
    ObjectAnimator().ofFloat(Controls,"scaleY",{1,.8,1.3,.9,1}).setDuration(time).start()
  end


  function CircleButton(view,InsideColor,radiu,InsideColor1)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
    drawable.setColor(InsideColor)
    drawable.setStroke(2, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end

  function CircleButton3(view,InsideColor,radiu,InsideColor1)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({radiu, radii, radii, radiu, radiu, radiu, radiu, radiu})
    drawable.setColor(InsideColor)
    drawable.setStroke(5, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end

  function CircleButtonA(view,InsideColor,radiu,InsideColor1)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({radiu, radiu, radiu, radiu, 0, 0, 0, 0})
    drawable.setColor(InsideColor)
    drawable.setStroke(5, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end

  function CircleButton1(view,InsideColor,radiu,InsideColor1)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radii, radii, radiu})
    drawable.setColor(InsideColor)
    drawable.setStroke(4, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end


  function CircleButton2(view,InsideColor,radiu,InsideColor1)

import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({20, 20, 20, 20, 0, 20, 0, 20})
    drawable.setColor(InsideColor)
    drawable.setStroke(2, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end

  function CircleButtonY(view,InsideColor,radiu,InsideColor1)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setCornerRadii({radiu, radiu, radiu, radiu, 0, 0, 0, 0})
    drawable.setColor(InsideColor)
    drawable.setStroke(5, InsideColor1)
    view.setBackgroundDrawable(drawable)
  end

  CircleButton(start,0xFFFF0000,20,0xFF212121)
  CircleButton(tg,0xFFFF0000,20,0xFF212121)
  CircleButton(exit,0xFFFF0000,20,0xFF212121)

  isMax=false
  function start.onClick()
    Waterdropanimation(start,100)
    if isMax==false then
      isMax=true
      LayoutVIP1.addView(mainWindow1,WmHz1)
      start.setText("Stop Cheat")
     else
      isMax=false
      LayoutVIP1.removeView(mainWindow1)
      start.setText("Start Cheat")
    end
  end

  function tg.onClick()
    Waterdropanimation(tg,100)
    import "android.content.Intent"
    import "android.net.Uri"
    url="https://t.me/iraiz"
    viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
    activity.startActivity(viewIntent)
  end


  function exit.onClick()
    Waterdropanimation(exit,100)
    os.exit()
  end

  import "android.graphics.drawable.BitmapDrawable"


  isMax=false
  function img1.onClick()
    Waterdropanimation(menu,100)
    if isMax==false then
      isMax=true
      img1.setImageDrawable(BitmapDrawable(loadbitmap("ic_to_bottom.png")))
      cheatMenu.setVisibility(View.VISIBLE)
     else
      isMax=false
      img1.setImageDrawable(BitmapDrawable(loadbitmap("ic_to_top.png")))
      cheatMenu.setVisibility(View.GONE)
    end
  end

  import "android.graphics.Typeface"
  CircleButton(menu,0xC7FF0400,20,0xFF212121)
  CircleButton3(menuu,0xED161616,20,0x00000000)
  CircleButton(menu1,0xC7FF0400,20,0xC7FF0400)
  pg.showPage(0)
  menu1.onClick=function()
    pg.showPage(0)
    CircleButton2(menu1,0xC7FF0400,20,0xC7FF0400)
    CircleButton2(menu2,0x00000000,20,0xC7FF0400)
  end
  menu2.onClick=function()
    pg.showPage(1)
    CircleButton2(menu2,0xC7FF0400,20,0xC7FF0400)
    CircleButton2(menu1,0x00000000,20,0xC7FF0400)
  end
  pg.addOnPageChangeListener{
    onPageScrolled=function(a,b,c)
    end,
    onPageSelected=function(page)
      if page==0 then
        CircleButton2(menu1,0xC7FF0400,20,0xC7FF0400)
        CircleButton2(menu2,0x00000000,20,0xC7FF0400)
        --CircleButton(menu6,0x00000000,20,0x00000000)
      end
      if page==1 then
        CircleButton2(menu2,0xC7FF0400,20,0xC7FF0400)
        CircleButton2(menu1,0x00000000,20,0xC7FF0400)
        --CircleButton(menu6,0x00000000,20,0x00000000)
      end
    end,
    onPageScrollStateChanged=function(state)
    end,
  }

  fixcrash.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  logo.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  lobby.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  wallhack.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  spectag.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  darkmode.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  fastscope.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  fastshot.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));

bullettrack.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  assist.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  lock.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  nosmoke.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  nospread.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  noreload.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));
  norecoil.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP));

--[[  function FontN(FontN1,file) FontN1.setTypeface(Typeface.createFromFile(File(file)))
  end

  FontN(text0,activity.getLuaDir().."/ttf/font.ttf")
  FontN(text1,activity.getLuaDir().."/ttf/font.ttf")
  FontN(start,activity.getLuaDir().."/ttf/font.ttf")
  FontN(tg,activity.getLuaDir().."/ttf/font.ttf")
  FontN(exit,activity.getLuaDir().."/ttf/font.ttf")
  FontN(win_move,activity.getLuaDir().."/ttf/font.ttf")
  FontN(menu1,activity.getLuaDir().."/ttf/font.ttf")
  FontN(menu2,activity.getLuaDir().."/ttf/font.ttf")
  FontN(fixcrash,activity.getLuaDir().."/ttf/font.ttf")
  FontN(logo,activity.getLuaDir().."/ttf/font.ttf")
  FontN(lobby,activity.getLuaDir().."/ttf/font.ttf")
  FontN(wallhack,activity.getLuaDir().."/ttf/font.ttf")
  FontN(spectag,activity.getLuaDir().."/ttf/font.ttf")
  FontN(darkmode,activity.getLuaDir().."/ttf/font.ttf")
  FontN(fastscope,activity.getLuaDir().."/ttf/font.ttf")
  FontN(fastshot,activity.getLuaDir().."/ttf/font.ttf")
  FontN(bullettrack,activity.getLuaDir().."/ttf/font.ttf")
  FontN(assist,activity.getLuaDir().."/ttf/font.ttf")
  FontN(lock,activity.getLuaDir().."/ttf/font.ttf")
  FontN(nosmoke,activity.getLuaDir().."/ttf/font.ttf")
  FontN(nospread,activity.getLuaDir().."/ttf/font.ttf")
  FontN(noreload,activity.getLuaDir().."/ttf/font.ttf")
  FontN(norecoil,activity.getLuaDir().."/ttf/font.ttf")
]]
  import("com.androlua.util.RootUtil")
  os.execute("su")

  function IRAIZ(A0_15)
    if RootUtil().haveRoot() == true then
      os.execute("su -c chmod 777 " .. activity.getLuaDir(A0_15))
      Runtime.getRuntime().exec("su -c " .. activity.getLuaDir(A0_15))
     else
      os.execute("chmod 777 " .. activity.getLuaDir(A0_15))
      Runtime.getRuntime().exec("" .. activity.getLuaDir(A0_15))
    end
  end

  function fixcrash.OnCheckedChangeListener()
    if fixcrash.checked then
      IRAIZ("/cpp/iraiz 1")
     else
      IRAIZ("/cpp/iraiz 1")
      fixcrash.setChecked(true)
    end
  end

  function logo.OnCheckedChangeListener()
    if logo.checked then
      IRAIZ("/cpp/iraiz 2")
     else
      IRAIZ("/cpp/iraiz 2")
      logo.setChecked(true)
    end
  end

  function lobby.OnCheckedChangeListener()
    if lobby.checked then
      IRAIZ("/cpp/iraiz 3")
     else
      IRAIZ("/cpp/iraiz 3")
      lobby.setChecked(true)
    end
  end

  function wallhack.OnCheckedChangeListener()
    if wallhack.checked then
      IRAIZ("/cpp/iraiz 4")
     else
      IRAIZ("/cpp/iraiz 5")
    end
  end

  function spectag.OnCheckedChangeListener()
    if spectag.checked then
      IRAIZ("/cpp/iraiz 6")
     else
      IRAIZ("/cpp/iraiz 7")
    end
  end

  function darkmode.OnCheckedChangeListener()
    if darkmode.checked then
      IRAIZ("/cpp/iraiz 8")
     else
      IRAIZ("/cpp/iraiz 9")
    end
  end

  function fastscope.OnCheckedChangeListener()
    if fastscope.checked then
      IRAIZ("/cpp/iraiz 10")
     else
      IRAIZ("/cpp/iraiz 11")
    end
  end

  function fastshot.OnCheckedChangeListener()
    if fastshot.checked then
      IRAIZ("/cpp/iraiz 12")
     else
      IRAIZ("/cpp/iraiz 13")
    end
  end

  function bullettrack.OnCheckedChangeListener()
    if bullettrack.checked then
      IRAIZ("/cpp/iraiz 14")
     else
      IRAIZ("/cpp/iraiz 15")
    end
  end

function assist.OnCheckedChangeListener()
    if assist.checked then
      IRAIZ("/cpp/iraiz 16")
     else
      IRAIZ("/cpp/iraiz 17")
    end
  end

  function lock.OnCheckedChangeListener()
    if lock.checked then
      IRAIZ("/cpp/iraiz 18")
     else
      IRAIZ("/cpp/iraiz 19")
    end
  end

  function nosmoke.OnCheckedChangeListener()
    if nosmoke.checked then
      IRAIZ("/cpp/iraiz 20")
     else
      IRAIZ("/cpp/iraiz 21")
    end
  end

  function nospread.OnCheckedChangeListener()
    if nospread.checked then
      IRAIZ("/cpp/iraiz 22")
     else
      IRAIZ("/cpp/iraiz 23")
    end
  end

  function noreload.OnCheckedChangeListener()
    if noreload.checked then
      IRAIZ("/cpp/iraiz 24")
     else
      IRAIZ("/cpp/iraiz 25")
    end
  end

  function norecoil.OnCheckedChangeListener()
    if norecoil.checked then
      IRAIZ("/cpp/iraiz 26")
     else
      IRAIZ("/cpp/iraiz 27")
    end
  end

end
