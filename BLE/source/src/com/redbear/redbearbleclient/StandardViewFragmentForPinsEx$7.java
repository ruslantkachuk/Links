// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.view.View;
import android.widget.LinearLayout;
import com.redbear.redbearbleclient.data.PinInfo;
import java.util.HashMap;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

class val.pin
    implements Runnable
{

    final StandardViewFragmentForPinsEx this$0;
    private final PinInfo val$pin;

    public void run()
    {
        if (mAdapter != null) goto _L2; else goto _L1
_L1:
        if (getActivity() != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        mAdapter = new nAdapter(StandardViewFragmentForPinsEx.this, getActivity(), pins);
_L2:
        if (list_pins_views != null)
        {
            View view = (View)list_pins_views.get((new StringBuilder(String.valueOf(val$pin.pin))).toString());
            if (view == null)
            {
                if (pins_list != null)
                {
                    View view1 = mAdapter.getView(val$pin.pin, view, null);
                    android.widget.ntForPinsEx ntforpinsex = new android.widget.(-1, -2);
                    ntforpinsex.gins(10, 5, 10, 5);
                    pins_list.addView(view1, ntforpinsex);
                    list_pins_views.put((new StringBuilder()).append(val$pin.pin).toString(), view1);
                    return;
                }
            } else
            {
                mAdapter.getView(val$pin.pin, view, null);
                return;
            }
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    nAdapter()
    {
        this$0 = final_standardviewfragmentforpinsex;
        val$pin = PinInfo.this;
        super();
    }
}
