// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.view.View;
import com.redbear.RedBearService.RedBearService;
import com.redbear.redbearbleclient.view.PullRefreshListView;
import java.util.ArrayList;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

class this._cls2
    implements Runnable
{

    final llToList this$2;

    public void run()
    {
        ing.setVisibility(8);
        if (rService != null)
        {
            rService.stopScanDevice();
            llToList();
        }
        llToList();
    }

    is._cls1()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/redbear/redbearbleclient/MainPage$MainPageFragment$1

/* anonymous class */
    class MainPage.MainPageFragment._cls1
        implements ServiceConnection
    {

        final MainPage.MainPageFragment this$1;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            if (mBearService != null)
            {
                loading.setVisibility(0);
                if (mArrayList != null)
                {
                    mArrayList.clear();
                }
                if (adapter != null)
                {
                    adapter.clear();
                }
                mBearService.setListener(mIScanDeviceListener);
                mBearService.startScanDevice();
                listView.postDelayed(new MainPage.MainPageFragment._cls1._cls1(), 2000L);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            mBearService = null;
        }


            
            {
                this$1 = MainPage.MainPageFragment.this;
                super();
            }
    }

}
