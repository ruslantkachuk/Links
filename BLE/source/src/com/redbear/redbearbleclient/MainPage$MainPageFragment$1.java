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

class this._cls1
    implements ServiceConnection
{

    final earService this$1;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        earService = ((com.redbear.RedBearService.mBearService)ibinder).etService();
        if (earService != null)
        {
            ading.setVisibility(0);
            if (rrayList != null)
            {
                rrayList.clear();
            }
            if (apter != null)
            {
                apter.clear();
            }
            earService.setListener(ScanDeviceListener);
            earService.startScanDevice();
            stView.postDelayed(new Runnable() {

                final MainPage.MainPageFragment._cls1 this$2;

                public void run()
                {
                    loading.setVisibility(8);
                    if (mBearService != null)
                    {
                        mBearService.stopScanDevice();
                        addAllToList();
                    }
                    addAllToList();
                }

            
            {
                this$2 = MainPage.MainPageFragment._cls1.this;
                super();
            }
            }, 2000L);
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        earService = null;
    }


    _cls1.this._cls2()
    {
        this$1 = this._cls1.this;
        super();
    }
}
