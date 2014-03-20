// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls0
    implements Runnable
{

    final StandardViewFragmentForPins this$0;

    public void run()
    {
        mProtocol.queryTotalPinCount();
    }

    ()
    {
        this$0 = StandardViewFragmentForPins.this;
        super();
    }
}
