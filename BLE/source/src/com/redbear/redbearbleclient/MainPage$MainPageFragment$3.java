// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardView, MainPage

class this._cls1
    implements android.widget.ner
{

    final tActivity this$1;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (rrayList != null && !rrayList.isEmpty() && i > 0)
        {
            this._cls1 _lcls1 = (rrayList)rrayList.get(i - 1);
            Intent intent = new Intent(tActivity(), com/redbear/redbearbleclient/StandardView);
            intent.putExtra("Device", _lcls1);
            tActivity().startActivity(intent);
            tActivity().overridePendingTransition(0x7f040002, 0x7f040005);
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
