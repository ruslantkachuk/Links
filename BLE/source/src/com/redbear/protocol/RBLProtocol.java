// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.protocol;

import android.util.Log;
import com.redbear.RedBearService.RedBearService;

// Referenced classes of package com.redbear.protocol:
//            IRBLProtocol

public class RBLProtocol
{

    final String TAG = "RBLProtocol";
    String address;
    IRBLProtocol mIrblProtocol;
    RedBearService mRedBearService;

    public RBLProtocol(String s)
    {
        address = s;
    }

    public void analogWrite(int i, int j)
    {
        Log.e("RBLProtocol", (new StringBuilder("RBLPRotocol: analogWrite value: ")).append(j).toString());
        char ac[] = new char[3];
        ac[0] = 'N';
        ac[1] = (char)i;
        ac[2] = (char)j;
        write(ac);
    }

    public void digitalRead(int i)
    {
        Log.e("RBLProtocol", "RBLProtocol: digitalRead");
        char ac[] = new char[2];
        ac[0] = 'G';
        ac[1] = (char)i;
        write(ac);
    }

    public void digitalWrite(int i, int j)
    {
        Log.e("RBLProtocol", "RBLProtocol: digitalWrite");
        char ac[] = new char[3];
        ac[0] = 'T';
        ac[1] = (char)i;
        ac[2] = (char)j;
        write(ac);
    }

    public void parseData(int ai[])
    {
        int i;
        int j;
        i = ai.length;
        j = 0;
_L16:
        int k;
        int l;
        if (j >= i)
        {
            return;
        }
        k = j + 1;
        l = ai[j];
        Log.e("RBLProtocol", (new StringBuilder("type: ")).append(l).toString());
        l;
        JVM INSTR lookupswitch 6: default 104
    //                   67: 170
    //                   71: 362
    //                   77: 312
    //                   80: 202
    //                   86: 110
    //                   90: 252;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        j = k;
        continue; /* Loop/switch isn't completed */
_L6:
        if (mIrblProtocol != null)
        {
            IRBLProtocol irblprotocol4 = mIrblProtocol;
            int l3 = k + 1;
            int i4 = ai[k];
            int j4 = l3 + 1;
            int k4 = ai[l3];
            j = j4 + 1;
            irblprotocol4.protocolDidReceiveProtocolVersion(i4, k4, ai[j4]);
            continue; /* Loop/switch isn't completed */
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (mIrblProtocol != null)
        {
            IRBLProtocol irblprotocol3 = mIrblProtocol;
            j = k + 1;
            irblprotocol3.protocolDidReceiveTotalPinCount(ai[k]);
            continue; /* Loop/switch isn't completed */
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (mIrblProtocol != null)
        {
            IRBLProtocol irblprotocol2 = mIrblProtocol;
            int i3 = k + 1;
            int j3 = ai[k];
            int k3 = i3 + 1;
            irblprotocol2.protocolDidReceivePinCapability(j3, ai[i3]);
            j = k3;
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L7
_L7:
        if (mIrblProtocol == null) goto _L9; else goto _L8
_L8:
        int ai1[];
        int l2;
        ai1 = new int[i - 1];
        l2 = k;
_L12:
        if (l2 < i) goto _L11; else goto _L10
_L10:
        mIrblProtocol.protocolDidReceiveCustomData(ai1, i - 1);
_L9:
        j = i;
        continue; /* Loop/switch isn't completed */
_L11:
        ai1[l2 - 1] = ai[l2];
        l2++;
        if (true) goto _L12; else goto _L4
_L4:
        if (mIrblProtocol == null) goto _L1; else goto _L13
_L13:
        IRBLProtocol irblprotocol1 = mIrblProtocol;
        int i2 = k + 1;
        int j2 = ai[k];
        int k2 = i2 + 1;
        irblprotocol1.protocolDidReceivePinMode(j2, ai[i2]);
        j = k2;
        continue; /* Loop/switch isn't completed */
_L3:
        if (mIrblProtocol == null) goto _L1; else goto _L14
_L14:
        if (ai[3] > 127 || ai[3] < 0)
        {
            Log.e("RBLProtocol", (new StringBuilder("data[4]: ")).append(ai[4]).toString());
        }
        IRBLProtocol irblprotocol = mIrblProtocol;
        int i1 = k + 1;
        int j1 = ai[k];
        int k1 = i1 + 1;
        int l1 = ai[i1];
        j = k1 + 1;
        irblprotocol.protocolDidReceivePinData(j1, l1, ai[k1]);
        if (true) goto _L16; else goto _L15
_L15:
    }

    public void queryPinAll()
    {
        Log.e("RBLProtocol", "RBLProtocol: queryPinAll");
        write(new char[] {
            'A', '\r', '\n'
        });
    }

    public void queryPinCapability(int i)
    {
        Log.e("RBLProtocol", "RBLProtocol: queryPinCapability");
        char ac[] = new char[2];
        ac[0] = 'P';
        ac[1] = (char)i;
        write(ac);
    }

    public void queryPinMode(int i)
    {
        Log.e("RBLProtocol", "RBLPRotocol: queryPinMode");
        char ac[] = new char[2];
        ac[0] = 'M';
        ac[1] = (char)i;
        write(ac);
    }

    public void queryProtocolVersion()
    {
        Log.e("RBLProtocol", "RBLProtocol: queryProtocolVersion");
        write(new char[] {
            'V'
        });
    }

    public void queryTotalPinCount()
    {
        Log.e("RBLProtocol", "RBLProtocol: queryTotalPinCount");
        write(new char[] {
            'C'
        });
    }

    public void sendCustomData(int ai[], int i)
    {
        char ac[] = new char[i + 2];
        ac[0] = 'Z';
        ac[1] = (char)i;
        int j = 2;
        int k = 0;
        do
        {
            if (j >= i)
            {
                write(ac);
                return;
            }
            int l = k + 1;
            ac[j] = (char)ai[k];
            j++;
            k = l;
        } while (true);
    }

    public void servoWrite(int i, int j)
    {
        Log.e("RBLProtocol", (new StringBuilder("RBLPRotocol: servoWrite value: ")).append(j).toString());
        char ac[] = new char[3];
        ac[0] = 'O';
        ac[1] = (char)i;
        ac[2] = (char)j;
        write(ac);
    }

    public void setIRBLProtocol(IRBLProtocol irblprotocol)
    {
        mIrblProtocol = irblprotocol;
    }

    public void setPinMode(int i, int j)
    {
        Log.e("RBLProtocol", "RBLPRotocol: setPinMode");
        char ac[] = new char[3];
        ac[0] = 'S';
        ac[1] = (char)i;
        ac[2] = (char)j;
        write(ac);
    }

    public void setmIRedBearService(RedBearService redbearservice)
    {
        mRedBearService = redbearservice;
    }

    protected void write(char ac[])
    {
        if (mRedBearService != null)
        {
            mRedBearService.writeValue(address, ac);
        }
    }
}
