// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.Handler;
import android.os.Message;
import com.redbear.RedBearService.RedBearService;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForChat

class this._cls0 extends Handler
{

    final StandardViewFragmentForChat this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        if (mBearService != null && mDevice != null)
        {
            mBearService.readRssi(mDevice.evice);
        }
    }

    ()
    {
        this$0 = StandardViewFragmentForChat.this;
        super();
    }
}
