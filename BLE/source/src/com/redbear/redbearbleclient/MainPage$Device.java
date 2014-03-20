// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.os.ParcelUuid;
import java.io.Serializable;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

public static class 
    implements Serializable
{

    private static final long serialVersionUID = 0xad45d48b4085e444L;
    public String address;
    public int bondState;
    public String name;
    public int rssi;
    public byte scanReadData[];
    public ParcelUuid uuids[];

    public ()
    {
    }
}
