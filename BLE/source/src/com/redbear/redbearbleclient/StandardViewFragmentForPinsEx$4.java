// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.Handler;
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls0
    implements Runnable
{

    final StandardViewFragmentForPinsEx this$0;

    public void run()
    {
        if (mProtocol != null)
        {
            mProtocol.queryProtocolVersion();
        }
        mHandler.sendEmptyMessageDelayed(1, 3000L);
    }

    ()
    {
        this$0 = StandardViewFragmentForPinsEx.this;
        super();
    }
}
