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
//            StandardViewFragmentForPins

class val.state
    implements Runnable
{

    final dler this$1;
    private final String val$deviceAddress;
    private final int val$rssi;
    private final int val$state;

    public void run()
    {
        deviceRssiStateChange(val$deviceAddress, val$rssi, val$state);
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

    is._cls0()
    {
        this$1 = final__pcls0;
        val$deviceAddress = s;
        val$rssi = i;
        val$state = I.this;
        super();
    }

    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPins$2

/* anonymous class */
    class StandardViewFragmentForPins._cls2
        implements IRedBearServiceEventListener
    {

        final StandardViewFragmentForPins this$0;

        public void onDeviceConnectStateChange(final String deviceAddress, final int state)
        {
            if (getActivity() != null)
            {
                getActivity().runOnUiThread(new StandardViewFragmentForPins._cls2._cls2());
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

        public void onDeviceRssiUpdate(final String deviceAddress, final int rssi, int i)
        {
            getActivity().runOnUiThread(i. new StandardViewFragmentForPins._cls2._cls1());
        }


            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }

        // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPins$2$2

/* anonymous class */
        class StandardViewFragmentForPins._cls2._cls2
            implements Runnable
        {

            final StandardViewFragmentForPins._cls2 this$1;
            private final String val$deviceAddress;
            private final int val$state;

            public void run()
            {
                deviceConnectStateChange(deviceAddress, state);
            }

                    
                    {
                        this$1 = StandardViewFragmentForPins._cls2.this;
                        deviceAddress = s;
                        state = i;
                        super();
                    }
        }

    }

}
