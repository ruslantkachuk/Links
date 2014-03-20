// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SettingPage extends Activity
{

    public SettingPage()
    {
    }

    protected void close()
    {
        finish();
        overridePendingTransition(0x7f040001, 0x7f040006);
    }

    public void onBackPressed()
    {
        close();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        RelativeLayout relativelayout = new RelativeLayout(this);
        relativelayout.setBackgroundColor(-1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13, -1);
        ImageView imageview = new ImageView(this);
        imageview.setImageResource(0x7f020009);
        imageview.setId(1);
        relativelayout.addView(imageview, layoutparams);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(13, -1);
        layoutparams1.addRule(3, 1);
        TextView textview = new TextView(this);
        textview.setTextColor(0xff000000);
        textview.setGravity(17);
        textview.setTextSize(25F);
        textview.setText("BLE Controller v1.0");
        relativelayout.addView(textview, layoutparams1);
        setContentView(relativelayout);
        getActionBar().setDisplayHomeAsUpEnabled(true);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 16908332 16908332: default 24
    //                   16908332 30;
           goto _L1 _L2
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        close();
        if (true) goto _L1; else goto _L3
_L3:
    }
}
