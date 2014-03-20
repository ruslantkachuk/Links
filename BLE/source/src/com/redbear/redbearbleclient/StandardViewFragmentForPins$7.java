// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.widget.ListView;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls0
    implements Runnable
{

    final StandardViewFragmentForPins this$0;

    public void run()
    {
        if (mAdapter == null)
        {
            mAdapter = new nAdapter(StandardViewFragmentForPins.this, getActivity(), pins);
            listView.setAdapter(mAdapter);
            return;
        } else
        {
            mAdapter.notifyDataSetChanged();
            return;
        }
    }

    nAdapter()
    {
        this$0 = StandardViewFragmentForPins.this;
        super();
    }
}
