// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.RedBearService;

import android.bluetooth.BluetoothDevice;
import android.util.Log;

// Referenced classes of package com.redbear.RedBearService:
//            RedBearService, IRedBearServiceEventListener

class this._cls0
    implements android.bluetooth.LeScanCallback
{

    final RedBearService this$0;

    public void onLeScan(BluetoothDevice bluetoothdevice, int i, byte abyte0[])
    {
        Log.d(RedBearService.TAG, (new StringBuilder("onScanResult (device : ")).append(bluetoothdevice.getName()).append(")").toString());
        if (RedBearService.access$0(RedBearService.this) != null)
        {
            Log.d(RedBearService.TAG, (new StringBuilder("mIScanDeviceListener (device : ")).append(bluetoothdevice.getName()).append(")").toString());
            addDevice(bluetoothdevice);
            RedBearService.access$0(RedBearService.this).onDeviceFound(bluetoothdevice.getAddress(), bluetoothdevice.getName(), i, bluetoothdevice.getBondState(), abyte0, bluetoothdevice.getUuids());
        }
    }

    entListener()
    {
        this$0 = RedBearService.this;
        super();
    }
}
