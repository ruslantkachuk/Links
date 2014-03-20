// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import com.nineoldandroids.animation.Animator;
import java.util.List;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            SuperAdapter

class val.positionsCopy
    implements com.nineoldandroids.animation.orListener
{

    final SuperAdapter this$0;
    private final List val$positionsCopy;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        SuperAdapter.access$0(SuperAdapter.this, val$positionsCopy);
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
        val$positionsCopy = List.this;
        super();
    }
}
