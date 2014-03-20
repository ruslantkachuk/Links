// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.nineoldandroids.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.redbear.redbearbleclient.view.listviewanimation:
//            OnDismissCallback

public class SwipeDismissListViewTouchListener
    implements android.view.View.OnTouchListener
{
    class PendingDismissData
        implements Comparable
    {

        public int position;
        final SwipeDismissListViewTouchListener this$0;
        public View view;

        public int compareTo(PendingDismissData pendingdismissdata)
        {
            return pendingdismissdata.position - position;
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((PendingDismissData)obj);
        }

        public PendingDismissData(int i, View view1)
        {
            this$0 = SwipeDismissListViewTouchListener.this;
            super();
            position = i;
            view = view1;
        }
    }


    private long mAnimationTime;
    private OnDismissCallback mCallback;
    private int mDismissAnimationRefCount;
    private int mDownPosition;
    private View mDownView;
    private float mDownX;
    private float mDownY;
    private AbsListView mListView;
    private int mMaxFlingVelocity;
    private int mMinFlingVelocity;
    private boolean mPaused;
    private List mPendingDismisses;
    private int mSlop;
    private boolean mSwiping;
    private VelocityTracker mVelocityTracker;
    private int mViewWidth;

    public SwipeDismissListViewTouchListener(AbsListView abslistview, OnDismissCallback ondismisscallback)
    {
        mViewWidth = 1;
        mPendingDismisses = new ArrayList();
        mDismissAnimationRefCount = 0;
        ViewConfiguration viewconfiguration = ViewConfiguration.get(abslistview.getContext());
        mSlop = viewconfiguration.getScaledTouchSlop();
        mMinFlingVelocity = 16 * viewconfiguration.getScaledMinimumFlingVelocity();
        mMaxFlingVelocity = viewconfiguration.getScaledMaximumFlingVelocity();
        mAnimationTime = abslistview.getContext().getResources().getInteger(0x10e0000);
        mListView = abslistview;
        mCallback = ondismisscallback;
    }

    private void performDismiss(final View dismissView, int i)
    {
        final android.view.ViewGroup.LayoutParams lp = dismissView.getLayoutParams();
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            dismissView.getHeight(), 1
        }).setDuration(mAnimationTime);
        valueanimator.addListener(new AnimatorListenerAdapter() {

            final SwipeDismissListViewTouchListener this$0;

            public void onAnimationEnd(Animator animator)
            {
                SwipeDismissListViewTouchListener swipedismisslistviewtouchlistener = SwipeDismissListViewTouchListener.this;
                swipedismisslistviewtouchlistener.mDismissAnimationRefCount = -1 + swipedismisslistviewtouchlistener.mDismissAnimationRefCount;
                if (mDismissAnimationRefCount != 0) goto _L2; else goto _L1
_L1:
                int ai[];
                int j;
                Collections.sort(mPendingDismisses);
                ai = new int[mPendingDismisses.size()];
                j = -1 + mPendingDismisses.size();
_L5:
                if (j >= 0) goto _L4; else goto _L3
_L3:
                Iterator iterator;
                mCallback.onDismiss(mListView, ai);
                iterator = mPendingDismisses.iterator();
_L6:
                if (iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_158;
                }
                mPendingDismisses.clear();
_L2:
                return;
_L4:
                ai[j] = ((PendingDismissData)mPendingDismisses.get(j)).position;
                j--;
                  goto _L5
                PendingDismissData pendingdismissdata = (PendingDismissData)iterator.next();
                ViewHelper.setAlpha(pendingdismissdata.view, 1.0F);
                ViewHelper.setTranslationX(pendingdismissdata.view, 0.0F);
                android.view.ViewGroup.LayoutParams layoutparams = pendingdismissdata.view.getLayoutParams();
                layoutparams.height = 0;
                pendingdismissdata.view.setLayoutParams(layoutparams);
                  goto _L6
            }

            
            {
                this$0 = SwipeDismissListViewTouchListener.this;
                super();
            }
        });
        valueanimator.addUpdateListener(new com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener() {

            final SwipeDismissListViewTouchListener this$0;
            private final View val$dismissView;
            private final android.view.ViewGroup.LayoutParams val$lp;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                lp.height = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                dismissView.setLayoutParams(lp);
            }

            
            {
                this$0 = SwipeDismissListViewTouchListener.this;
                lp = layoutparams;
                dismissView = view;
                super();
            }
        });
        mPendingDismisses.add(new PendingDismissData(i, dismissView));
        valueanimator.start();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (mViewWidth < 2)
        {
            mViewWidth = mListView.getWidth();
        }
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 2: default 48
    //                   0 50
    //                   1 231
    //                   2 571;
           goto _L1 _L2 _L3 _L4
_L1:
        return false;
_L2:
        Rect rect;
        int i1;
        int j1;
        int k1;
        int l1;
        if (mPaused)
        {
            return false;
        }
        rect = new Rect();
        i1 = mListView.getChildCount();
        int ai[] = new int[2];
        mListView.getLocationOnScreen(ai);
        j1 = (int)motionevent.getRawX() - ai[0];
        k1 = (int)motionevent.getRawY() - ai[1];
        l1 = 0;
_L8:
        if (l1 < i1) goto _L6; else goto _L5
_L5:
        if (mDownView != null)
        {
            mDownX = motionevent.getRawX();
            mDownY = motionevent.getRawY();
            mDownPosition = mListView.getPositionForView(mDownView);
            mVelocityTracker = VelocityTracker.obtain();
            mVelocityTracker.addMovement(motionevent);
        }
        view.onTouchEvent(motionevent);
        return true;
_L6:
        View view1 = mListView.getChildAt(l1);
        view1.getHitRect(rect);
        if (!rect.contains(j1, k1))
        {
            break; /* Loop/switch isn't completed */
        }
        mDownView = view1;
        if (true) goto _L5; else goto _L7
_L7:
        l1++;
          goto _L8
_L3:
        if (mVelocityTracker == null) goto _L10; else goto _L9
_L9:
        float f2;
        float f3;
        float f4;
        f2 = motionevent.getRawX() - mDownX;
        mVelocityTracker.addMovement(motionevent);
        mVelocityTracker.computeCurrentVelocity(1000);
        f3 = Math.abs(mVelocityTracker.getXVelocity());
        f4 = Math.abs(mVelocityTracker.getYVelocity());
        if (Math.abs(f2) <= (float)(mViewWidth / 2)) goto _L12; else goto _L11
_L11:
        boolean flag;
        boolean flag1;
        flag = true;
        final View downView;
        final int downPosition;
        ViewPropertyAnimator viewpropertyanimator;
        ViewPropertyAnimator viewpropertyanimator1;
        AnimatorListenerAdapter animatorlisteneradapter;
        if (f2 > 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
_L14:
        if (flag)
        {
            downView = mDownView;
            downPosition = mDownPosition;
            mDismissAnimationRefCount = 1 + mDismissAnimationRefCount;
            viewpropertyanimator = ViewPropertyAnimator.animate(mDownView);
            int i;
            int j;
            int k;
            int l;
            if (flag1)
            {
                l = mViewWidth;
            } else
            {
                l = -mViewWidth;
            }
            viewpropertyanimator1 = viewpropertyanimator.translationX(l).alpha(0.0F).setDuration(mAnimationTime);
            animatorlisteneradapter = new AnimatorListenerAdapter() {

                final SwipeDismissListViewTouchListener this$0;
                private final int val$downPosition;
                private final View val$downView;

                public void onAnimationEnd(Animator animator)
                {
                    performDismiss(downView, downPosition);
                }

            
            {
                this$0 = SwipeDismissListViewTouchListener.this;
                downView = view;
                downPosition = i;
                super();
            }
            };
            viewpropertyanimator1.setListener(animatorlisteneradapter);
        } else
        {
            ViewPropertyAnimator.animate(mDownView).translationX(0.0F).alpha(1.0F).setDuration(mAnimationTime).setListener(null);
        }
        mVelocityTracker = null;
        mDownX = 0.0F;
        mDownView = null;
        mDownPosition = -1;
        mSwiping = false;
_L10:
        if (true) goto _L13; else goto _L12
_L13:
        continue; /* Loop/switch isn't completed */
_L12:
        i = (float)mMinFlingVelocity != f3;
        flag = false;
        flag1 = false;
        if (i <= 0)
        {
            j = f3 != (float)mMaxFlingVelocity;
            flag = false;
            flag1 = false;
            if (j <= 0)
            {
                k = f4 != f3;
                flag = false;
                flag1 = false;
                if (k < 0)
                {
                    flag = true;
                    if (mVelocityTracker.getXVelocity() > 0.0F)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                }
            }
        }
          goto _L14
_L4:
        if (mVelocityTracker != null && !mPaused)
        {
            mVelocityTracker.addMovement(motionevent);
            float f = motionevent.getRawX() - mDownX;
            float f1 = motionevent.getRawY() - mDownY;
            if (Math.abs(f) > (float)mSlop && Math.abs(f) > Math.abs(f1))
            {
                mSwiping = true;
                mListView.requestDisallowInterceptTouchEvent(true);
                MotionEvent motionevent1 = MotionEvent.obtain(motionevent);
                motionevent1.setAction(3 | motionevent.getActionIndex() << 8);
                mListView.onTouchEvent(motionevent1);
            }
            if (mSwiping)
            {
                ViewHelper.setTranslationX(mDownView, f);
                ViewHelper.setAlpha(mDownView, Math.max(0.0F, Math.min(1.0F, 1.0F - (2.0F * Math.abs(f)) / (float)mViewWidth)));
                return true;
            }
        }
        if (true) goto _L1; else goto _L15
_L15:
    }






}
