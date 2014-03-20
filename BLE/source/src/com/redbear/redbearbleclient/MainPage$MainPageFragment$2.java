// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.ParcelUuid;
import android.util.Log;
import com.redbear.RedBearService.IRedBearServiceEventListener;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

class this._cls1
    implements IRedBearServiceEventListener
{

    final dDevice this$1;

    public void onDeviceConnectStateChange(String s, int i)
    {
    }

    public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
    {
        Log.e("onDeviceFound", (new StringBuilder("address : ")).append(s).toString());
        this._cls1 _lcls1 = new this._cls1();
        _lcls1._fld1 = s;
        _lcls1._fld1 = s1;
        _lcls1._fld1 = i;
        _lcls1._fld1 = j;
        _lcls1. = abyte0;
        _lcls1. = aparceluuid;
        dDevice(_lcls1);
    }

    public void onDeviceReadValue(int ai[])
    {
    }

    public void onDeviceRssiUpdate(String s, int i, int j)
    {
        Log.e("MainPage", (new StringBuilder("deviceAddress : ")).append(s).append(" , rssi : ").append(i).toString());
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
