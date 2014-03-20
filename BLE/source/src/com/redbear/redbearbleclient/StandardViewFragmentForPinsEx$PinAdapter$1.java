// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.widget.CompoundButton;
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class this._cls1
    implements android.widget..PinAdapter._cls1
{

    final this._cls1 this$1;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (compoundbutton.isEnabled())
        {
            Integer integer = (Integer)compoundbutton.getTag();
            if (integer != null && cess._mth0(this._cls1.this).mProtocol != null)
            {
                RBLProtocol rblprotocol = cess._mth0(this._cls1.this).mProtocol;
                int i = integer.intValue();
                int j;
                if (flag)
                {
                    j = 1;
                } else
                {
                    j = 0;
                }
                rblprotocol.digitalWrite(i, j);
            }
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
