// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.view.View;
import android.widget.RelativeLayout;
import com.redbear.protocol.RBLProtocol;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class val.btn_mode
    implements android.view.mentForPinsEx._cls9
{

    final StandardViewFragmentForPinsEx this$0;
    private final int val$btn_mode;
    private final int val$btn_pin;

    public void onClick(View view)
    {
        if (mProtocol != null)
        {
            mProtocol.setPinMode(val$btn_pin, val$btn_mode);
        }
        select_window.setVisibility(4);
    }

    ()
    {
        this$0 = final_standardviewfragmentforpinsex;
        val$btn_pin = i;
        val$btn_mode = I.this;
        super();
    }
}
