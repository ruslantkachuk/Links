// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.content.Intent;

// Referenced classes of package com.redbear.redbearbleclient:
//            SplashScreen, MainPage

class this._cls0
    implements Runnable
{

    final SplashScreen this$0;

    public void run()
    {
        Intent intent = new Intent(SplashScreen.this, com/redbear/redbearbleclient/MainPage);
        startActivity(intent);
        overridePendingTransition(0x10a0000, 0x10a0001);
        finish();
    }

    ()
    {
        this$0 = SplashScreen.this;
        super();
    }
}
