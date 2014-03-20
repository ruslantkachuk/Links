// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.util.Log;
import android.util.SparseArray;
import android.widget.SeekBar;
import com.redbear.protocol.RBLProtocol;
import com.redbear.redbearbleclient.data.PinInfo;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls1
    implements android.widget.SeekBarChange
{

    final value this$1;
    int value;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("value : ")).append(value).toString());
        if (flag)
        {
            value = i;
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
        Integer integer;
label0:
        {
            integer = (Integer)seekbar.getTag();
            if (integer != null && value(this._cls1.this).mProtocol != null)
            {
                if (((PinInfo)_fld1.get(integer.intValue())).mode != 3)
                {
                    break label0;
                }
                this._mth1(this._cls1.this).mProtocol.analogWrite(integer.intValue(), value);
            }
            return;
        }
        value(this._cls1.this).mProtocol.servoWrite(integer.intValue(), value);
    }

    Y()
    {
        this$1 = this._cls1.this;
        super();
    }
}
