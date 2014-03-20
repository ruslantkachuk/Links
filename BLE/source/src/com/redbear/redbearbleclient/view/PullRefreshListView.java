// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class PullRefreshListView extends ListView
    implements android.widget.AbsListView.OnScrollListener
{
    public static interface OnRefreshListener
    {

        public abstract void onRefresh();
    }


    private static final int DONE = 3;
    private static final int LOADING = 4;
    private static final int PULL_To_REFRESH = 1;
    private static final int RATIO = 3;
    private static final int REFRESHING = 2;
    private static final int RELEASE_To_REFRESH = 0;
    private static final String TAG = "listview";
    private RotateAnimation animation;
    private ImageView arrowImageView;
    private int firstItemIndex;
    private int headContentHeight;
    private LinearLayout headView;
    private LayoutInflater inflater;
    private boolean isBack;
    private boolean isRecored;
    private boolean isRefreshable;
    private TextView lastUpdatedTextView;
    private ProgressBar progressBar;
    private OnRefreshListener refreshListener;
    private RotateAnimation reverseAnimation;
    private int startY;
    private int state;
    private TextView tipsTextview;

    public PullRefreshListView(Context context)
    {
        super(context);
        init(context);
    }

    public PullRefreshListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    private void changeHeaderViewByState()
    {
        switch (state)
        {
        default:
            return;

        case 0: // '\0'
            arrowImageView.setVisibility(0);
            progressBar.setVisibility(8);
            tipsTextview.setVisibility(0);
            lastUpdatedTextView.setVisibility(0);
            arrowImageView.clearAnimation();
            arrowImageView.startAnimation(animation);
            tipsTextview.setText(0x7f060011);
            return;

        case 1: // '\001'
            progressBar.setVisibility(8);
            tipsTextview.setVisibility(0);
            lastUpdatedTextView.setVisibility(0);
            arrowImageView.clearAnimation();
            arrowImageView.setVisibility(0);
            if (isBack)
            {
                isBack = false;
                arrowImageView.clearAnimation();
                arrowImageView.startAnimation(reverseAnimation);
                tipsTextview.setText(0x7f06000e);
                return;
            } else
            {
                tipsTextview.setText(0x7f06000e);
                return;
            }

        case 2: // '\002'
            headView.setPadding(0, 0, 0, 0);
            progressBar.setVisibility(0);
            arrowImageView.clearAnimation();
            arrowImageView.setVisibility(8);
            tipsTextview.setText(0x7f060010);
            lastUpdatedTextView.setVisibility(0);
            return;

        case 3: // '\003'
            headView.setPadding(0, -1 * headContentHeight, 0, 0);
            progressBar.setVisibility(8);
            arrowImageView.clearAnimation();
            arrowImageView.setImageResource(0x7f020001);
            tipsTextview.setText(0x7f06000e);
            lastUpdatedTextView.setVisibility(0);
            return;
        }
    }

    private void init(Context context)
    {
        setCacheColorHint(context.getResources().getColor(0x7f050001));
        inflater = LayoutInflater.from(context);
        headView = (LinearLayout)inflater.inflate(0x7f030006, null);
        arrowImageView = (ImageView)headView.findViewById(0x7f090016);
        arrowImageView.setMinimumWidth(70);
        arrowImageView.setMinimumHeight(50);
        progressBar = (ProgressBar)headView.findViewById(0x7f090017);
        tipsTextview = (TextView)headView.findViewById(0x7f090018);
        lastUpdatedTextView = (TextView)headView.findViewById(0x7f090019);
        measureView(headView);
        headContentHeight = headView.getMeasuredHeight();
        headView.setPadding(0, -1 * headContentHeight, 0, 0);
        headView.invalidate();
        addHeaderView(headView, null, false);
        setOnScrollListener(this);
        animation = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        animation.setInterpolator(new LinearInterpolator());
        animation.setDuration(250L);
        animation.setFillAfter(true);
        reverseAnimation = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        reverseAnimation.setInterpolator(new LinearInterpolator());
        reverseAnimation.setDuration(200L);
        reverseAnimation.setFillAfter(true);
        state = 3;
        isRefreshable = false;
    }

    private void measureView(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (layoutparams == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -2);
        }
        int i = ViewGroup.getChildMeasureSpec(0, 0, layoutparams.width);
        int j = layoutparams.height;
        int k;
        if (j > 0)
        {
            k = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
        } else
        {
            k = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(i, k);
    }

    private void onRefresh()
    {
        if (refreshListener != null)
        {
            refreshListener.onRefresh();
        }
    }

    public void onRefreshComplete()
    {
        state = 3;
        changeHeaderViewByState();
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        firstItemIndex = i;
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!isRefreshable) goto _L2; else goto _L1
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 36
    //                   0 42
    //                   1 73
    //                   2 139;
           goto _L2 _L3 _L4 _L5
_L2:
        return super.onTouchEvent(motionevent);
_L3:
        if (firstItemIndex == 0 && !isRecored)
        {
            isRecored = true;
            startY = (int)motionevent.getY();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (state != 2 && state != 4)
        {
            if (state == 1)
            {
                state = 3;
                changeHeaderViewByState();
            }
            if (state == 0)
            {
                state = 2;
                changeHeaderViewByState();
                onRefresh();
            }
        }
        isRecored = false;
        isBack = false;
        continue; /* Loop/switch isn't completed */
_L5:
        int i;
        i = (int)motionevent.getY();
        if (!isRecored && firstItemIndex == 0)
        {
            Log.v("listview", "\u5728move\u65F6\u5019\u8BB0\u5F55\u4E0B\u4F4D\u7F6E");
            isRecored = true;
            startY = i;
        }
        if (state == 2 || !isRecored || state == 4)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (state == 0)
        {
            setSelection(0);
            if ((i - startY) / 3 < headContentHeight && i - startY > 0)
            {
                state = 1;
                changeHeaderViewByState();
            } else
            if (i - startY <= 0)
            {
                state = 3;
                changeHeaderViewByState();
            }
        }
        if (state == 1)
        {
            setSelection(0);
            if ((i - startY) / 3 < headContentHeight)
            {
                break; /* Loop/switch isn't completed */
            }
            state = 0;
            isBack = true;
            changeHeaderViewByState();
        }
_L8:
        if (state == 3 && i - startY > 0)
        {
            state = 1;
            changeHeaderViewByState();
        }
        if (state == 1)
        {
            headView.setPadding(0, -1 * headContentHeight + (i - startY) / 3, 0, 0);
        }
        if (state == 0)
        {
            headView.setPadding(0, (i - startY) / 3 - headContentHeight, 0, 0);
        }
        if (true) goto _L2; else goto _L6
_L6:
        if (i - startY > 0) goto _L8; else goto _L7
_L7:
        state = 3;
        changeHeaderViewByState();
          goto _L8
    }

    public void setAdapter(BaseAdapter baseadapter)
    {
        super.setAdapter(baseadapter);
    }

    public void setonRefreshListener(OnRefreshListener onrefreshlistener)
    {
        refreshListener = onrefreshlistener;
        isRefreshable = true;
    }
}
