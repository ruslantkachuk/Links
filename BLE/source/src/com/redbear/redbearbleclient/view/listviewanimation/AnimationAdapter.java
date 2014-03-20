// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            BaseAdapterDecorator

public abstract class AnimationAdapter extends BaseAdapterDecorator
{
    private class AnimationInfo
    {

        public Animator animator;
        public int position;
        final AnimationAdapter this$0;

        public AnimationInfo(int i, Animator animator1)
        {
            this$0 = AnimationAdapter.this;
            super();
            position = i;
            animator = animator1;
        }
    }


    protected static final long DEFAULTANIMATIONDELAYMILLIS = 100L;
    protected static final long DEFAULTANIMATIONDURATIONMILLIS = 300L;
    private static final long INITIALDELAYMILLIS = 150L;
    private long mAnimationStartMillis;
    private SparseArray mAnimators;
    private boolean mHasParentAnimationAdapter;
    private int mLastAnimatedPosition;

    public AnimationAdapter(BaseAdapter baseadapter)
    {
        super(baseadapter);
        mAnimators = new SparseArray();
        mAnimationStartMillis = -1L;
        mLastAnimatedPosition = -1;
        if (baseadapter instanceof AnimationAdapter)
        {
            ((AnimationAdapter)baseadapter).setHasParentAnimationAdapter(true);
        }
    }

    private void animateView(int i, ViewGroup viewgroup, View view)
    {
        if (mAnimationStartMillis == -1L)
        {
            mAnimationStartMillis = System.currentTimeMillis();
        }
        hideView(view);
        Animator aanimator[];
        Animator aanimator1[];
        ObjectAnimator objectanimator;
        AnimatorSet animatorset;
        if (mDecoratedBaseAdapter instanceof AnimationAdapter)
        {
            aanimator = ((AnimationAdapter)mDecoratedBaseAdapter).getAnimators(viewgroup, view);
        } else
        {
            aanimator = new Animator[0];
        }
        aanimator1 = getAnimators(viewgroup, view);
        objectanimator = ObjectAnimator.ofFloat(view, "alpha", new float[] {
            0.0F, 1.0F
        });
        animatorset = new AnimatorSet();
        animatorset.playTogether(concatAnimators(aanimator, aanimator1, objectanimator));
        animatorset.setStartDelay(calculateAnimationDelay());
        animatorset.setDuration(getAnimationDurationMillis());
        animatorset.start();
        mAnimators.put(view.hashCode(), new AnimationInfo(i, animatorset));
    }

    private void animateViewIfNecessary(int i, View view, ViewGroup viewgroup)
    {
        if (i > mLastAnimatedPosition && !mHasParentAnimationAdapter)
        {
            animateView(i, viewgroup, view);
            mLastAnimatedPosition = i;
        }
    }

    private long calculateAnimationDelay()
    {
        long l;
        if (1 + (getAbsListView().getLastVisiblePosition() - getAbsListView().getFirstVisiblePosition()) < mLastAnimatedPosition)
        {
            l = getAnimationDelayMillis();
            if ((getAbsListView() instanceof GridView) && android.os.Build.VERSION.SDK_INT >= 11)
            {
                l += getAnimationDelayMillis() * (long)((1 + mLastAnimatedPosition) % ((GridView)getAbsListView()).getNumColumns());
            }
        } else
        {
            l = ((long)(1 + mLastAnimatedPosition) * getAnimationDelayMillis() + (150L + mAnimationStartMillis)) - System.currentTimeMillis();
        }
        return Math.max(0L, l);
    }

    private Animator[] concatAnimators(Animator aanimator[], Animator aanimator1[], Animator animator)
    {
        Animator aanimator2[];
        int i;
        aanimator2 = new Animator[1 + (aanimator.length + aanimator1.length)];
        i = 0;
_L3:
        if (i < aanimator1.length) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        if (j >= aanimator.length)
        {
            aanimator2[-1 + aanimator2.length] = animator;
            return aanimator2;
        }
        break MISSING_BLOCK_LABEL_59;
_L2:
        aanimator2[i] = aanimator1[i];
        i++;
          goto _L3
        aanimator2[i] = aanimator[j];
        i++;
        j++;
          goto _L4
    }

    private void hideView(View view)
    {
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, "alpha", new float[] {
            0.0F
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator);
        animatorset.setDuration(0L);
        animatorset.start();
    }

    protected abstract long getAnimationDelayMillis();

    protected abstract long getAnimationDurationMillis();

    public abstract Animator[] getAnimators(ViewGroup viewgroup, View view);

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        boolean flag = mHasParentAnimationAdapter;
        boolean flag1 = false;
        if (!flag)
        {
            if (getAbsListView() == null)
            {
                throw new IllegalStateException("Call setListView() on this AnimationAdapter before setAdapter()!");
            }
            flag1 = false;
            if (view != null)
            {
                int j = view.hashCode();
                AnimationInfo animationinfo = (AnimationInfo)mAnimators.get(j);
                flag1 = false;
                View view1;
                if (animationinfo != null)
                {
                    if (animationinfo.position != i)
                    {
                        animationinfo.animator.end();
                        mAnimators.remove(j);
                    } else
                    {
                        flag1 = true;
                    }
                }
            }
        }
        view1 = super.getView(i, view, viewgroup);
        if (!mHasParentAnimationAdapter && !flag1)
        {
            animateViewIfNecessary(i, view1, viewgroup);
        }
        return view1;
    }

    public void reset()
    {
        mAnimators.clear();
        mLastAnimatedPosition = -1;
        mAnimationStartMillis = -1L;
        if (getDecoratedBaseAdapter() instanceof AnimationAdapter)
        {
            ((AnimationAdapter)getDecoratedBaseAdapter()).reset();
        }
    }

    public void setHasParentAnimationAdapter(boolean flag)
    {
        mHasParentAnimationAdapter = flag;
    }
}
