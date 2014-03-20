// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.view.View;
import com.nineoldandroids.animation.ValueAnimator;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            SuperAdapter

class val.view
    implements com.nineoldandroids.animation.nimatorUpdateListener
{

    final SuperAdapter this$0;
    private final android.view.tParams val$lp;
    private final View val$view;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        val$lp.height = ((Integer)valueanimator.getAnimatedValue()).intValue();
        val$view.setLayoutParams(val$lp);
    }

    ()
    {
        this$0 = final_superadapter;
        val$lp = tparams;
        val$view = View.this;
        super();
    }
}
