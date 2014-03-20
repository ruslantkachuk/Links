// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.TextView;

public class AddPage extends Activity
{

    public AddPage()
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
        TextView textview = new TextView(this);
        textview.setTextColor(0xff000000);
        textview.setGravity(17);
        textview.setTextSize(25F);
        textview.setText("That is a AddPage page");
        setContentView(textview);
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
