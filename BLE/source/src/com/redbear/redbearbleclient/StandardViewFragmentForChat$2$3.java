// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.os.Handler;
import android.os.ParcelUuid;
import android.widget.EditText;
import com.redbear.RedBearService.IRedBearServiceEventListener;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForChat

class val.value
    implements Runnable
{

    final val.value this$1;
    private final int val$value[];

    public void run()
    {
        int i = val$value.length;
        char ac[] = new char[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                String s = new String(ac);
                editInput.setText(s);
                return;
            }
            ac[j] = (char)val$value[j];
            j++;
        } while (true);
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$value = _5B_I.this;
        super();
    }

    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForChat$2

/* anonymous class */
    class StandardViewFragmentForChat._cls2
        implements IRedBearServiceEventListener
    {

        final StandardViewFragmentForChat this$0;

        public void onDeviceConnectStateChange(final String deviceAddress, final int state)
        {
            getActivity().runOnUiThread(new StandardViewFragmentForChat._cls2._cls2());
        }

        public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
        {
        }

        public void onDeviceReadValue(int ai[])
        {
            getActivity().runOnUiThread(ai. new StandardViewFragmentForChat._cls2._cls3());
        }

        public void onDeviceRssiUpdate(final String deviceAddress, final int rssi, final int state)
        {
            getActivity().runOnUiThread(new StandardViewFragmentForChat._cls2._cls1());
        }


            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }

        // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForChat$2$1

/* anonymous class */
        class StandardViewFragmentForChat._cls2._cls1
            implements Runnable
        {

            final StandardViewFragmentForChat._cls2 this$1;
            private final String val$deviceAddress;
            private final int val$rssi;
            private final int val$state;

            public void run()
            {
                deviceRssiStateChange(deviceAddress, rssi, state);
                if (isFirst)
                {
                    mHandler.sendEmptyMessageDelayed(0, 1000L);
                    isFirst = false;
                    return;
                } else
                {
                    mHandler.sendEmptyMessageDelayed(0, 300L);
                    return;
                }
            }

                    
                    {
                        this$1 = StandardViewFragmentForChat._cls2.this;
                        deviceAddress = s;
                        rssi = i;
                        state = j;
                        super();
                    }
        }


        // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForChat$2$2

/* anonymous class */
        class StandardViewFragmentForChat._cls2._cls2
            implements Runnable
        {

            final StandardViewFragmentForChat._cls2 this$1;
            private final String val$deviceAddress;
            private final int val$state;

            public void run()
            {
                deviceConnectStateChange(deviceAddress, state);
            }

                    
                    {
                        this$1 = StandardViewFragmentForChat._cls2.this;
                        deviceAddress = s;
                        state = i;
                        super();
                    }
        }

    }

}