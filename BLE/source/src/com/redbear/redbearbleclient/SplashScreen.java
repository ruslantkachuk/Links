// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.redbear.redbearbleclient.view.LogoView;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

public class SplashScreen extends Activity
{

    public SplashScreen()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        LogoView logoview = new LogoView(this);
        setContentView(logoview);
        logoview.postDelayed(new Runnable() {

            final SplashScreen this$0;

            public void run()
            {
                Intent intent = new Intent(SplashScreen.this, com/redbear/redbearbleclient/MainPage);
                startActivity(intent);
                overridePendingTransition(0x10a0000, 0x10a0001);
                finish();
            }

            
            {
                this$0 = SplashScreen.this;
                super();
            }
        }, 500L);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return true;
    }
}
