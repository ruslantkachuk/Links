// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.view.View;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

class this._cls1
    implements com.redbear.redbearbleclient.view.hListener
{

    final freshTask.execute this$1;

    public void onRefresh()
    {
        sultVIew.setVisibility(8);
        if (freshTask != null)
        {
            freshTask.cancel(true);
        }
        freshTask = new freshTask(this._cls1.this);
        freshTask.execute(new Void[0]);
    }

    freshTask()
    {
        this$1 = this._cls1.this;
        super();
    }
}
