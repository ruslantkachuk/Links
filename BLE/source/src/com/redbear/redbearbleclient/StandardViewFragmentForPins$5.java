// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.util.SparseArray;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.redbear.redbearbleclient.data.PinInfo;
import java.util.HashMap;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls0
    implements Runnable
{

    final StandardViewFragmentForPins this$0;

    public void run()
    {
        if (mLoading != null)
        {
            mLoading.setVisibility(8);
        }
        if (changeValues == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = pins.size();
        j = 0;
_L6:
        if (j < i) goto _L4; else goto _L3
_L3:
        changeValues = null;
        updateData();
        isFirstReadPin = false;
_L2:
        listView.setEnabled(true);
        return;
_L4:
        int k = pins.keyAt(j);
        PinInfo pininfo = (PinInfo)pins.get(k);
        PinInfo pininfo1 = (PinInfo)changeValues.get((new StringBuilder(String.valueOf(k))).toString());
        if (pininfo1 != null)
        {
            pininfo.mode = pininfo1.mode;
            pininfo.value = pininfo1.value;
        }
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        this$0 = StandardViewFragmentForPins.this;
        super();
    }
}
