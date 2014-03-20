// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            SingleAnimationAdapter, OnDismissCallback, SwipeDismissListViewTouchListener

public class SuperAdapter extends SingleAnimationAdapter
{

    protected static final long DEFAULTANIMATIONDELAYMILLIS = 100L;
    protected static final long DEFAULTANIMATIONDURATIONMILLIS = 300L;
    boolean isSlideToRemove;
    private final long mAnimationDelayMillis;
    private final long mAnimationDurationMillis;
    private OnDismissCallback mCallback;

    public SuperAdapter(BaseAdapter baseadapter)
    {
        this(baseadapter, 100L, 300L);
    }

    public SuperAdapter(BaseAdapter baseadapter, long l)
    {
        this(baseadapter, l, 300L);
    }

    public SuperAdapter(BaseAdapter baseadapter, long l, long l1)
    {
        super(baseadapter);
        isSlideToRemove = false;
        mAnimationDelayMillis = l;
        mAnimationDurationMillis = l1;
    }

    public SuperAdapter(BaseAdapter baseadapter, OnDismissCallback ondismisscallback)
    {
        this(baseadapter, 100L, 300L);
        mCallback = ondismisscallback;
    }

    private Animator createAnimatorForView(final View view)
    {
        final android.view.ViewGroup.LayoutParams lp = view.getLayoutParams();
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            view.getHeight(), 0
        });
        valueanimator.addListener(new com.nineoldandroids.animation.Animator.AnimatorListener() {

            final SuperAdapter this$0;
            private final android.view.ViewGroup.LayoutParams val$lp;
            private final View val$view;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                lp.height = 0;
                view.setLayoutParams(lp);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                this$0 = SuperAdapter.this;
                lp = layoutparams;
                view = view1;
                super();
            }
        });
        valueanimator.addUpdateListener(new com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener() {

            final SuperAdapter this$0;
            private final android.view.ViewGroup.LayoutParams val$lp;
            private final View val$view;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                lp.height = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                view.setLayoutParams(lp);
            }

            
            {
                this$0 = SuperAdapter.this;
                lp = layoutparams;
                view = view1;
                super();
            }
        });
        return valueanimator;
    }

    private List getVisibleViewsForPositions(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= getAbsListView().getChildCount())
            {
                return arraylist;
            }
            View view = getAbsListView().getChildAt(i);
            if (collection.contains(Integer.valueOf(getAbsListView().getPositionForView(view))))
            {
                arraylist.add(view);
            }
            i++;
        } while (true);
    }

    private void invokeCallback(Collection collection)
    {
        ArrayList arraylist = new ArrayList(collection);
        Collections.sort(arraylist);
        int ai[] = new int[arraylist.size()];
        int i = 0;
        do
        {
            if (i >= arraylist.size())
            {
                mCallback.onDismiss(getAbsListView(), ai);
                return;
            }
            ai[i] = ((Integer)arraylist.get((-1 + arraylist.size()) - i)).intValue();
            i++;
        } while (true);
    }

    public void animateDismiss(int i)
    {
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(i);
        animateDismiss(((Collection) (Arrays.asList(ainteger))));
    }

    public void animateDismiss(Collection collection)
    {
        final ArrayList positionsCopy;
        List list;
        positionsCopy = new ArrayList(collection);
        if (getAbsListView() == null)
        {
            throw new IllegalStateException("Call setListView() on this AnimateDismissAdapter before calling setAdapter()!");
        }
        list = getVisibleViewsForPositions(positionsCopy);
        Log.e("TAG", (new StringBuilder("positionsCopy: ")).append(positionsCopy.toString()).toString());
        if (list.isEmpty()) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = list.iterator();
_L7:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        AnimatorSet animatorset;
        Animator aanimator[];
        int i;
        animatorset = new AnimatorSet();
        aanimator = new Animator[arraylist.size()];
        i = 0;
_L5:
        if (i >= aanimator.length)
        {
            animatorset.playTogether(aanimator);
            animatorset.addListener(new com.nineoldandroids.animation.Animator.AnimatorListener() {

                final SuperAdapter this$0;
                private final List val$positionsCopy;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    invokeCallback(positionsCopy);
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                this$0 = SuperAdapter.this;
                positionsCopy = list;
                super();
            }
            });
            animatorset.start();
            return;
        }
        aanimator[i] = (Animator)arraylist.get(i);
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        arraylist.add(createAnimatorForView((View)iterator.next()));
        continue; /* Loop/switch isn't completed */
        if (true) goto _L5; else goto _L2
_L2:
        invokeCallback(positionsCopy);
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected long getAnimationDelayMillis()
    {
        return mAnimationDelayMillis;
    }

    protected long getAnimationDurationMillis()
    {
        return mAnimationDurationMillis;
    }

    protected Animator getAnimator(ViewGroup viewgroup, View view)
    {
        float af[] = new float[2];
        af[0] = viewgroup.getWidth();
        af[1] = 0.0F;
        return ObjectAnimator.ofFloat(view, "translationX", af);
    }

    public boolean isSlideToRemove()
    {
        return isSlideToRemove;
    }

    public void setAbsListView(AbsListView abslistview)
    {
        super.setAbsListView(abslistview);
        if (isSlideToRemove)
        {
            abslistview.setOnTouchListener(new SwipeDismissListViewTouchListener(abslistview, mCallback));
        }
    }

    public void setSlideToRemove(boolean flag)
    {
        isSlideToRemove = flag;
    }

}
