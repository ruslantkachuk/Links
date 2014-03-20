// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nineoldandroids.animation;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

// Referenced classes of package com.nineoldandroids.animation:
//            ValueAnimator

private static class <init> extends Handler
{

    public void handleMessage(Message message)
    {
        boolean flag;
        ArrayList arraylist;
        ArrayList arraylist1;
        flag = true;
        arraylist = (ArrayList)ValueAnimator.access$000().get();
        arraylist1 = (ArrayList)ValueAnimator.access$100().get();
        message.what;
        JVM INSTR tableswitch 0 1: default 48
    //                   0 49
    //                   1 161;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        ArrayList arraylist4 = (ArrayList)ValueAnimator.access$200().get();
        if (arraylist.size() > 0 || arraylist1.size() > 0)
        {
            flag = false;
        }
        while (arraylist4.size() > 0) 
        {
            ArrayList arraylist5 = (ArrayList)arraylist4.clone();
            arraylist4.clear();
            int i2 = arraylist5.size();
            int j2 = 0;
            while (j2 < i2) 
            {
                ValueAnimator valueanimator3 = (ValueAnimator)arraylist5.get(j2);
                if (ValueAnimator.access$300(valueanimator3) == 0L)
                {
                    ValueAnimator.access$400(valueanimator3);
                } else
                {
                    arraylist1.add(valueanimator3);
                }
                j2++;
            }
        }
_L3:
        long l = AnimationUtils.currentAnimationTimeMillis();
        ArrayList arraylist2 = (ArrayList)ValueAnimator.access$500().get();
        ArrayList arraylist3 = (ArrayList)ValueAnimator.access$600().get();
        int i = arraylist1.size();
        for (int j = 0; j < i; j++)
        {
            ValueAnimator valueanimator2 = (ValueAnimator)arraylist1.get(j);
            if (ValueAnimator.access$700(valueanimator2, l))
            {
                arraylist2.add(valueanimator2);
            }
        }

        int k = arraylist2.size();
        if (k > 0)
        {
            for (int l1 = 0; l1 < k; l1++)
            {
                ValueAnimator valueanimator1 = (ValueAnimator)arraylist2.get(l1);
                ValueAnimator.access$400(valueanimator1);
                ValueAnimator.access$802(valueanimator1, true);
                arraylist1.remove(valueanimator1);
            }

            arraylist2.clear();
        }
        int i1 = arraylist.size();
        for (int j1 = 0; j1 < i1;)
        {
            ValueAnimator valueanimator = (ValueAnimator)arraylist.get(j1);
            if (valueanimator.animationFrame(l))
            {
                arraylist3.add(valueanimator);
            }
            if (arraylist.size() == i1)
            {
                j1++;
            } else
            {
                i1--;
                arraylist3.remove(valueanimator);
            }
        }

        if (arraylist3.size() > 0)
        {
            for (int k1 = 0; k1 < arraylist3.size(); k1++)
            {
                ValueAnimator.access$900((ValueAnimator)arraylist3.get(k1));
            }

            arraylist3.clear();
        }
        if (flag && (!arraylist.isEmpty() || !arraylist1.isEmpty()))
        {
            sendEmptyMessageDelayed(1, Math.max(0L, ValueAnimator.access$1000() - (AnimationUtils.currentAnimationTimeMillis() - l)));
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
