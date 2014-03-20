// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.RedBearService;

import android.os.ParcelUuid;

public interface IRedBearServiceEventListener
{

    public abstract void onDeviceConnectStateChange(String s, int i);

    public abstract void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[]);

    public abstract void onDeviceReadValue(int ai[]);

    public abstract void onDeviceRssiUpdate(String s, int i, int j);
}
