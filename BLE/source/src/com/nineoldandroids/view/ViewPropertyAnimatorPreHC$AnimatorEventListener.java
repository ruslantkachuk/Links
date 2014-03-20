// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nineoldandroids.view;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.ValueAnimator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.nineoldandroids.view:
//            ViewPropertyAnimatorPreHC

private class <init>
    implements com.nineoldandroids.animation.>, com.nineoldandroids.animation.>
{

    final ViewPropertyAnimatorPreHC this$0;

    public void onAnimationCancel(Animator animator)
    {
        if (ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this) != null)
        {
            ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this)._mth0(animator);
        }
    }

    public void onAnimationEnd(Animator animator)
    {
        if (ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this) != null)
        {
            ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this)._mth0(animator);
        }
        ViewPropertyAnimatorPreHC.access$300(ViewPropertyAnimatorPreHC.this).remove(animator);
        if (ViewPropertyAnimatorPreHC.access$300(ViewPropertyAnimatorPreHC.this).isEmpty())
        {
            ViewPropertyAnimatorPreHC.access$202(ViewPropertyAnimatorPreHC.this, null);
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
        if (ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this) != null)
        {
            ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this)._mth0(animator);
        }
    }

    public void onAnimationStart(Animator animator)
    {
        if (ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this) != null)
        {
            ViewPropertyAnimatorPreHC.access$200(ViewPropertyAnimatorPreHC.this)._mth0(animator);
        }
    }

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f = valueanimator.getAnimatedFraction();
        this._cls0 _lcls0 = (this._cls0)ViewPropertyAnimatorPreHC.access$300(ViewPropertyAnimatorPreHC.this).get(valueanimator);
        if ((0x1ff & _lcls0.tyMask) != 0)
        {
            View view1 = (View)ViewPropertyAnimatorPreHC.access$400(ViewPropertyAnimatorPreHC.this).get();
            if (view1 != null)
            {
                view1.invalidate();
            }
        }
        ArrayList arraylist = _lcls0.luesHolder;
        if (arraylist != null)
        {
            int i = arraylist.size();
            for (int j = 0; j < i; j++)
            {
                this._cls0 _lcls0_1 = (luesHolder)arraylist.get(j);
                float f1 = _lcls0_1.Value + f * _lcls0_1.aValue;
                ViewPropertyAnimatorPreHC.access$500(ViewPropertyAnimatorPreHC.this, _lcls0_1.Constant, f1);
            }

        }
        View view = (View)ViewPropertyAnimatorPreHC.access$400(ViewPropertyAnimatorPreHC.this).get();
        if (view != null)
        {
            view.invalidate();
        }
    }

    private ()
    {
        this$0 = ViewPropertyAnimatorPreHC.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
