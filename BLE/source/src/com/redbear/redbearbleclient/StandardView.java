// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForPinsEx

public class StandardView extends Activity
    implements android.app.ActionBar.OnNavigationListener
{

    MainPage.Device mDevice;
    StandardViewFragmentForPinsEx mDummySectionFragment;

    public StandardView()
    {
        mDevice = null;
    }

    public void finish()
    {
        if (mDummySectionFragment != null)
        {
            mDummySectionFragment.disconnectDevice();
        }
        super.finish();
        overridePendingTransition(0x7f040001, 0x7f040006);
    }

    protected void getDataFromIntent()
    {
        Intent intent = getIntent();
        if (intent != null)
        {
            mDevice = (MainPage.Device)intent.getSerializableExtra("Device");
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getDataFromIntent();
        setContentView(0x7f030000);
        getActionBar().setDisplayShowTitleEnabled(true);
        mDummySectionFragment = new StandardViewFragmentForPinsEx(mDevice);
        getFragmentManager().beginTransaction().setCustomAnimations(0x10b0000, 0x10b0001).replace(0x7f090000, mDummySectionFragment).commit();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f080001, menu);
        return true;
    }

    public boolean onNavigationItemSelected(int i, long l)
    {
        return false;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR lookupswitch 2: default 32
    //                   16908332: 32
    //                   2131296288: 38;
           goto _L1 _L1 _L2
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        finish();
        if (true) goto _L1; else goto _L3
_L3:
    }
}
