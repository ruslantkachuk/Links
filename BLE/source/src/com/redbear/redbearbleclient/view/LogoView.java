// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

public class LogoView extends View
{

    int color_logobg;
    BitmapDrawable image_logo;
    Rect rect_logo;
    int view_height;
    int view_width;

    public LogoView(Context context)
    {
        super(context);
        color_logobg = -1;
        initRes();
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        canvas.drawColor(color_logobg);
        if (image_logo != null)
        {
            image_logo.draw(canvas);
        }
    }

    protected void genRects()
    {
        Log.e("tttt", (new StringBuilder("view_height : ")).append(view_height).toString());
        int i = image_logo.getIntrinsicWidth();
        int j = image_logo.getIntrinsicHeight();
        int k = view_width / 2;
        int l = (j * k) / i;
        rect_logo = new Rect();
        rect_logo.left = view_width / 2 - k / 2;
        rect_logo.right = view_width / 2 + k / 2;
        rect_logo.top = view_height / 2 - l / 2;
        rect_logo.bottom = view_height / 2 + l / 2;
        image_logo.setBounds(rect_logo);
    }

    void initRes()
    {
        image_logo = new BitmapDrawable(getResources(), BitmapFactory.decodeResource(getResources(), 0x7f020009));
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        view_width = i;
        view_height = j;
        Log.e("scrrenDesity", (new StringBuilder(String.valueOf(view_width))).append(" ").append(view_height).toString());
        genRects();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }
}
