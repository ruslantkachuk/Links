// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.nineoldandroids.animation:
//            AnimatorSet, Animator

private class mAnimatorSet
    implements mAnimatorSet
{

    private AnimatorSet mAnimatorSet;
    final AnimatorSet this$0;

    public void onAnimationCancel(Animator animator)
    {
        if (!mTerminated && AnimatorSet.access$000(AnimatorSet.this).size() == 0 && mListeners != null)
        {
            int i = mListeners.size();
            for (int j = 0; j < i; j++)
            {
                ((this._cls0)mListeners.get(j)).ationCancel(mAnimatorSet);
            }

        }
    }

    public void onAnimationEnd(Animator animator)
    {
label0:
        {
            animator.removeListener(this);
            AnimatorSet.access$000(AnimatorSet.this).remove(animator);
            ((this._cls0)AnimatorSet.access$100(mAnimatorSet).get(animator)).mAnimatorSet = true;
            if (mTerminated)
            {
                break label0;
            }
            ArrayList arraylist = AnimatorSet.access$200(mAnimatorSet);
            boolean flag = true;
            int i = arraylist.size();
            int j = 0;
label1:
            do
            {
label2:
                {
                    if (j < i)
                    {
                        if (((mAnimatorSet)arraylist.get(j)).mAnimatorSet)
                        {
                            break label2;
                        }
                        flag = false;
                    }
                    if (!flag)
                    {
                        break label0;
                    }
                    if (mListeners != null)
                    {
                        ArrayList arraylist1 = (ArrayList)mListeners.clone();
                        int k = arraylist1.size();
                        for (int l = 0; l < k; l++)
                        {
                            ((mAnimatorSet)arraylist1.get(l)).ationEnd(mAnimatorSet);
                        }

                    }
                    break label1;
                }
                j++;
            } while (true);
            AnimatorSet.access$302(mAnimatorSet, false);
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (AnimatorSet animatorset1)
    {
        this$0 = AnimatorSet.this;
        super();
        mAnimatorSet = animatorset1;
    }
}
