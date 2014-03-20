// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.view.View;
import com.nineoldandroids.animation.Animator;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            SuperAdapter

class val.view
    implements com.nineoldandroids.animation.orListener
{

    final SuperAdapter this$0;
    private final android.view.tParams val$lp;
    private final View val$view;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        val$lp.height = 0;
        val$view.setLayoutParams(val$lp);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    ()
    {
        this$0 = final_superadapter;
        val$lp = tparams;
        val$view = View.this;
        super();
    }
}
