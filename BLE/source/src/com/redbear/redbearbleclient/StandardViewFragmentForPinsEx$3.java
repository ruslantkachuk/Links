// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.Message;
import android.util.SparseArray;
import android.widget.Toast;
import com.redbear.RedBearService.RedBearService;
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls0
    implements android.os.agmentForPinsEx._cls3
{

    final StandardViewFragmentForPinsEx this$0;

    public boolean handleMessage(Message message)
    {
        if (message.what == 0)
        {
            if (mRedBearService != null && mDevice != null)
            {
                mRedBearService.readRssi(mDevice.evice);
            }
        } else
        if (message.what == 1 && pins.size() == 0)
        {
            if (mProtocol != null)
            {
                mProtocol.queryProtocolVersion();
            }
            Toast.makeText(getActivity(), "Retry it!", 0).show();
            return true;
        }
        return true;
    }

    ()
    {
        this$0 = StandardViewFragmentForPinsEx.this;
        super();
    }
}
