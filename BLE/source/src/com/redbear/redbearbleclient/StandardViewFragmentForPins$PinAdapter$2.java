// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.util.SparseArray;
import android.widget.SeekBar;
import com.redbear.protocol.RBLProtocol;
import com.redbear.redbearbleclient.data.PinInfo;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls1
    implements android.widget..PinAdapter._cls2
{

    final this._cls1 this$1;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        Byte byte1;
label0:
        {
            if (flag)
            {
                byte1 = (Byte)seekbar.getTag();
                if (byte1 != null && cess._mth0(this._cls1.this).mProtocol != null)
                {
                    if (((PinInfo)ta.get(byte1.byteValue())).mode != 3)
                    {
                        break label0;
                    }
                    cess._mth0(this._cls1.this).mProtocol.analogWrite(byte1.byteValue(), (byte)i);
                }
            }
            return;
        }
        cess._mth0(this._cls1.this).mProtocol.servoWrite(byte1.byteValue(), (byte)i);
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
