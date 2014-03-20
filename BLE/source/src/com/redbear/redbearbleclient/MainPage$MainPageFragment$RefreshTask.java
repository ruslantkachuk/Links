// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.AsyncTask;
import com.redbear.RedBearService.RedBearService;
import com.redbear.redbearbleclient.view.PullRefreshListView;
import java.util.ArrayList;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

class this._cls1 extends AsyncTask
{

    final  this$1;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Void doInBackground(Void avoid[])
    {
        try
        {
            Thread.sleep(2000L);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        if ( != null)
        {
            .stopScanDevice();
        }
        .onRefreshComplete();
        ();
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        .clear();
        clear.clear();
        if ( != null)
        {
            .stopScanDevice();
            .startScanDevice();
        }
    }

    r()
    {
        this$1 = this._cls1.this;
        super();
    }
}
