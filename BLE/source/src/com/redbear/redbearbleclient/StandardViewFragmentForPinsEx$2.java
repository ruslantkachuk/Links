// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.os.Handler;
import android.os.ParcelUuid;
import com.redbear.RedBearService.IRedBearServiceEventListener;
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls0
    implements IRedBearServiceEventListener
{

    final StandardViewFragmentForPinsEx this$0;

    public void onDeviceConnectStateChange(final String deviceAddress, final int state)
    {
        if (getActivity() != null)
        {
            getActivity().runOnUiThread(new Runnable() {

                final StandardViewFragmentForPinsEx._cls2 this$1;
                private final String val$deviceAddress;
                private final int val$state;

                public void run()
                {
                    deviceConnectStateChange(deviceAddress, state);
                }

            
            {
                this$1 = StandardViewFragmentForPinsEx._cls2.this;
                deviceAddress = s;
                state = i;
                super();
            }
            });
        }
    }

    public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
    {
    }

    public void onDeviceReadValue(int ai[])
    {
        if (mProtocol != null)
        {
            mProtocol.parseData(ai);
        }
    }

    public void onDeviceRssiUpdate(final String deviceAddress, final int rssi, final int state)
    {
        getActivity().runOnUiThread(new Runnable() {

            final StandardViewFragmentForPinsEx._cls2 this$1;
            private final String val$deviceAddress;
            private final int val$rssi;
            private final int val$state;

            public void run()
            {
                deviceRssiStateChange(deviceAddress, rssi, state);
                if (isFirstReadRssi)
                {
                    mHandler.sendEmptyMessageDelayed(0, 1000L);
                    isFirstReadRssi = false;
                    return;
                } else
                {
                    mHandler.sendEmptyMessageDelayed(0, 300L);
                    return;
                }
            }

            
            {
                this$1 = StandardViewFragmentForPinsEx._cls2.this;
                deviceAddress = s;
                rssi = i;
                state = j;
                super();
            }
        });
    }


    _cls2.val.state()
    {
        this$0 = StandardViewFragmentForPinsEx.this;
        super();
    }
}
