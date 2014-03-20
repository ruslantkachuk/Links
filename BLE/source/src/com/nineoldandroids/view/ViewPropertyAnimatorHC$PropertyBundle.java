// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nineoldandroids.view;

import java.util.ArrayList;

// Referenced classes of package com.nineoldandroids.view:
//            ViewPropertyAnimatorHC

private static class mNameValuesHolder
{

    ArrayList mNameValuesHolder;
    int mPropertyMask;

    boolean cancel(int i)
    {
        if ((i & mPropertyMask) != 0 && mNameValuesHolder != null)
        {
            int j = mNameValuesHolder.size();
            for (int k = 0; k < j; k++)
            {
                if (((r)mNameValuesHolder.get(k)).mNameConstant == i)
                {
                    mNameValuesHolder.remove(k);
                    mPropertyMask = mPropertyMask & ~i;
                    return true;
                }
            }

        }
        return false;
    }

    r(int i, ArrayList arraylist)
    {
        mPropertyMask = i;
        mNameValuesHolder = arraylist;
    }
}
