// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelUuid;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import com.redbear.RedBearService.IRedBearServiceEventListener;
import com.redbear.RedBearService.RedBearService;
import com.redbear.redbearbleclient.view.PullRefreshListView;
import com.redbear.redbearbleclient.view.listviewanimation.ArrayAdapter;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage, StandardView

public static class refreshTask extends Fragment
{
    private class MyListAdapter extends ArrayAdapter
    {

        ArrayList items;
        private Context mContext;
        private LayoutInflater mInflater;
        final MainPage.MainPageFragment this$1;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            MainPage.Device device = (MainPage.Device)items.get(i);
            View view1 = mInflater.inflate(0x7f030005, null);
            ((TextView)view1.findViewById(0x7f09000f)).setText(device.name);
            ((TextView)view1.findViewById(0x7f090013)).setText((new StringBuilder("Local Name: ")).append(device.name).toString());
            ((TextView)view1.findViewById(0x7f090012)).setText((new StringBuilder("Address: ")).append(device.address).toString());
            ((TextView)view1.findViewById(0x7f090011)).setText((new StringBuilder("Rssi: ")).append(device.rssi).toString());
            TextView textview = (TextView)view1.findViewById(0x7f090010);
            if (device.uuids == null)
            {
                textview.setText("uuid: null");
                return view1;
            } else
            {
                textview.setText((new StringBuilder(String.valueOf(device.uuids.toString()))).toString());
                return view1;
            }
        }

        public MyListAdapter(Context context, ArrayList arraylist)
        {
            this$1 = MainPage.MainPageFragment.this;
            super(arraylist);
            mContext = context;
            mInflater = LayoutInflater.from(mContext);
            items = arraylist;
        }
    }

    class RefreshTask extends AsyncTask
    {

        final MainPage.MainPageFragment this$1;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient Void doInBackground(Void avoid[])
        {
            try
            {
                Thread.sleep(2000L);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return null;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Void)obj);
        }

        protected void onPostExecute(Void void1)
        {
            if (mBearService != null)
            {
                mBearService.stopScanDevice();
            }
            listView.onRefreshComplete();
            addAllToList();
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            adapter.clear();
            mArrayList.clear();
            if (mBearService != null)
            {
                mBearService.stopScanDevice();
                mBearService.startScanDevice();
            }
        }

        RefreshTask()
        {
            this$1 = MainPage.MainPageFragment.this;
            super();
        }
    }
