// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPins

class this._cls0
    implements android.view.animation.ns._cls10
{

    final StandardViewFragmentForPins this$0;

    public void onAnimationEnd(Animation animation)
    {
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        select_window.setVisibility(0);
    }

    A()
    {
        this$0 = StandardViewFragmentForPins.this;
        super();
    }
}
