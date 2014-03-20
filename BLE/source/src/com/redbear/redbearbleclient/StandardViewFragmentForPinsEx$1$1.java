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
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls1
    implements Runnable
{

    final ice this$1;

    public void run()
    {
        mRedBearService.connectDevice(mDevice.ice, false);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1

/* anonymous class */
    class StandardViewFragmentForPinsEx._cls1
        implements ServiceConnection
    {

        final StandardViewFragmentForPinsEx this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mRedBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            Log.e("onServiceConnected", (new StringBuilder("mBearService : ")).append(mRedBearService).toString());
            if (mRedBearService != null && mDevice != null)
            {
                if (mProtocol != null)
                {
                    mProtocol.setmIRedBearService(mRedBearService);
                }
                mRedBearService.setListener(mIRedBearServiceEventListener);
                textName.post(new StandardViewFragmentForPinsEx._cls1._cls1());
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Log.e("onServiceConnected", "onServiceDisconnected");
            mRedBearService = null;
        }


            
            {
                this$0 = StandardViewFragmentForPinsEx.this;
                super();
            }
    }

}
