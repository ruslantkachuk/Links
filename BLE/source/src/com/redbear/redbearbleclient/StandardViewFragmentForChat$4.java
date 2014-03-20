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

class this._cls0
    implements ServiceConnection
{

    final StandardViewFragmentForChat this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        mBearService = ((com.redbear.RedBearService.mBearService)ibinder).Service();
        Log.e("onServiceConnected", (new StringBuilder("mBearService : ")).append(mBearService).toString());
        if (mBearService != null && mDevice != null)
        {
            mBearService.setListener(mIScanDeviceListener);
            textName.post(new Runnable() {

                final StandardViewFragmentForChat._cls4 this$1;

                public void run()
                {
                    mBearService.connectDevice(mDevice.address, false);
                }

            
            {
                this$1 = StandardViewFragmentForChat._cls4.this;
                super();
            }
            });
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Log.e("onServiceConnected", "onServiceDisconnected");
        mBearService = null;
    }


    _cls1.this._cls1()
    {
        this$0 = StandardViewFragmentForChat.this;
        super();
    }
}
