// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.util.SparseArray;
import android.view.View;
import com.redbear.redbearbleclient.data.PinInfo;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls1
    implements android.view.ns.PinAdapter._cls3
{

    final t this$1;

    public void onClick(View view)
    {
        Integer integer = (Integer)view.getTag();
        if (integer != null)
        {
            int i = integer.intValue();
            PinInfo pininfo = (PinInfo)ta.get(i);
            cess._mth0(this._cls1.this).showModeSelect(pininfo);
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
