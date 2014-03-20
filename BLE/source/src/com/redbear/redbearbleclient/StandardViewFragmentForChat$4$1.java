// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import android.widget.TextView;
import com.redbear.RedBearService.RedBearService;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForChat

class this._cls1
    implements Runnable
{

    final ice this$1;

    public void run()
    {
        mBearService.connectDevice(mDevice.ice, false);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForChat$4

/* anonymous class */
    class StandardViewFragmentForChat._cls4
        implements ServiceConnection
    {

        final StandardViewFragmentForChat this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            Log.e("onServiceConnected", (new StringBuilder("mBearService : ")).append(mBearService).toString());
            if (mBearService != null && mDevice != null)
            {
                mBearService.setListener(mIScanDeviceListener);
                textName.post(new StandardViewFragmentForChat._cls4._cls1());
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Log.e("onServiceConnected", "onServiceDisconnected");
            mBearService = null;
        }


            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }
    }

}
