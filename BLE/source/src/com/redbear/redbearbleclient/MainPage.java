// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.bluetooth.BluetoothAdapter;
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
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import com.redbear.RedBearService.IRedBearServiceEventListener;
import com.redbear.RedBearService.RedBearService;
import com.redbear.redbearbleclient.view.PullRefreshListView;
import com.redbear.redbearbleclient.view.listviewanimation.ArrayAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.redbear.redbearbleclient:
//            SettingPage, StandardView

public class MainPage extends Activity
{
    public static class Device
        implements Serializable
    {

        private static final long serialVersionUID = 0xad45d48b4085e444L;
        public String address;
        public int bondState;
        public String name;
        public int rssi;
        public byte scanReadData[];
        public ParcelUuid uuids[];

        public Device()
        {
        }
    }

    public static class MainPageFragment extends Fragment
    {

        MyListAdapter adapter;
        ServiceConnection conn;
        PullRefreshListView listView;
        View loading;
        ArrayList mArrayList;
        RedBearService mBearService;
        IRedBearServiceEventListener mIScanDeviceListener;
        android.widget.AdapterView.OnItemClickListener mItemClickListener;
        RefreshTask refreshTask;
        View resultVIew;

        void addAllToList()
        {
            if (getActivity() != null)
            {
                adapter = new MyListAdapter(getActivity(), mArrayList);
                listView.setAdapter(adapter);
            }
            if (mArrayList.size() == 0)
            {
                resultVIew.setVisibility(0);
                return;
            } else
            {
                resultVIew.setVisibility(8);
                return;
            }
        }

        void addDevice(Device device)
        {
            Iterator iterator = mArrayList.iterator();
            Device device1;
            do
            {
                if (!iterator.hasNext())
                {
                    mArrayList.add(device);
                    return;
                }
                device1 = (Device)iterator.next();
            } while (!device1.address.equals(device.address));
            device1.rssi = device.rssi;
            getActivity().runOnUiThread(new Runnable() {

                final MainPageFragment this$1;

                public void run()
                {
                    if (adapter != null)
                    {
                        adapter.notifyDataSetChanged();
                    }
                }

            
            {
                this$1 = MainPageFragment.this;
                super();
            }
            });
        }

        public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
        {
            View view = layoutinflater.inflate(0x7f030004, null);
            listView = (PullRefreshListView)view.findViewById(0x7f09000b);
            listView.setDivider(null);
            listView.setOnItemClickListener(mItemClickListener);
            loading = view.findViewById(0x7f09000c);
            resultVIew = view.findViewById(0x7f09000a);
            listView.setonRefreshListener(new com.redbear.redbearbleclient.view.PullRefreshListView.OnRefreshListener() {

                final MainPageFragment this$1;

                public void onRefresh()
                {
                    resultVIew.setVisibility(8);
                    if (refreshTask != null)
                    {
                        refreshTask.cancel(true);
                    }
                    refreshTask = new MainPageFragment.RefreshTask();
                    refreshTask.execute(new Void[0]);
                }

            
            {
                this$1 = MainPageFragment.this;
                super();
            }
            });
            return view;
        }

        public void onDestroy()
        {
            try
            {
                getActivity().unbindService(conn);
            }
            catch (Exception exception) { }
            super.onDestroy();
        }

        public void onResume()
        {
            Intent intent = new Intent("com.redbear.RedBearService.RedBearService");
            getActivity().bindService(intent, conn, 1);
            if (mBearService != null)
            {
                mBearService.setListener(mIScanDeviceListener);
            }
            super.onResume();
        }

        public MainPageFragment()
        {
            mArrayList = new ArrayList();
            conn = new _cls1();
            mIScanDeviceListener = new _cls2();
            mItemClickListener = new _cls3();
            refreshTask = null;
        }
    }

    private class MainPageFragment.MyListAdapter extends ArrayAdapter
    {

        ArrayList items;
        private Context mContext;
        private LayoutInflater mInflater;
        final MainPageFragment this$1;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            Device device = (Device)items.get(i);
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

        public MainPageFragment.MyListAdapter(Context context, ArrayList arraylist)
        {
            this$1 = MainPageFragment.this;
            super(arraylist);
            mContext = context;
            mInflater = LayoutInflater.from(mContext);
            items = arraylist;
        }
    }

    class MainPageFragment.RefreshTask extends AsyncTask
    {

        final MainPageFragment this$1;

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

        MainPageFragment.RefreshTask()
        {
            this$1 = MainPageFragment.this;
            super();
        }
    }


    public static final int REQUEST_CODE = 1;
    static final String TAG = "MainPage";

    public MainPage()
    {
    }

    protected void close()
    {
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1 && j == 0)
        {
            finish();
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        setContentView(0x7f030000);
        if (!BluetoothAdapter.getDefaultAdapter().isEnabled())
        {
            startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 1);
        }
        MainPageFragment mainpagefragment = new MainPageFragment();
        getFragmentManager().beginTransaction().setCustomAnimations(0x10b0000, 0x10b0001).replace(0x7f090000, mainpagefragment).commit();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f080000, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR lookupswitch 2: default 32
    //                   16908332: 63
    //                   2131296287: 38;
           goto _L1 _L2 _L3
_L1:
        return super.onOptionsItemSelected(menuitem);
_L3:
        startActivity(new Intent(this, com/redbear/redbearbleclient/SettingPage));
        overridePendingTransition(0x7f040002, 0x7f040005);
        continue; /* Loop/switch isn't completed */
_L2:
        close();
        if (true) goto _L1; else goto _L4
_L4:
    }

    // Unreferenced inner class com/redbear/redbearbleclient/MainPage$MainPageFragment$1

/* anonymous class */
    class MainPageFragment._cls1
        implements ServiceConnection
    {

        final MainPageFragment this$1;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            if (mBearService != null)
            {
                loading.setVisibility(0);
                if (mArrayList != null)
                {
                    mArrayList.clear();
                }
                if (adapter != null)
                {
                    adapter.clear();
                }
                mBearService.setListener(mIScanDeviceListener);
                mBearService.startScanDevice();
                listView.postDelayed(new Runnable() {

                    final MainPageFragment._cls1 this$2;

                    public void run()
                    {
    class MainPageFragment._cls1
        implements ServiceConnection
    {
                        loading.setVisibility(8);
                        if (mBearService != null)
                        {
                            mBearService.stopScanDevice();
                            addAllToList();
                        }
                        addAllToList();
                    }

            
            {
                this$2 = MainPageFragment._cls1.this;
                super();
            }
                }, 2000L);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            mBearService = null;
        }


            
            {
                this$1 = MainPageFragment.this;
                super();
            }
    }


    // Unreferenced inner class com/redbear/redbearbleclient/MainPage$MainPageFragment$2

/* anonymous class */
    class MainPageFragment._cls2
        implements IRedBearServiceEventListener
    {

        final MainPageFragment this$1;

        public void onDeviceConnectStateChange(String s, int i)
        {
        }

        public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
        {
            Log.e("onDeviceFound", (new StringBuilder("address : ")).append(s).toString());
            Device device = new Device();
            device.address = s;
            device.name = s1;
            device.rssi = i;
            device.bondState = j;
            device.scanReadData = abyte0;
            device.uuids = aparceluuid;
            addDevice(device);
        }

        public void onDeviceReadValue(int ai[])
        {
        }

        public void onDeviceRssiUpdate(String s, int i, int j)
        {
            Log.e("MainPage", (new StringBuilder("deviceAddress : ")).append(s).append(" , rssi : ").append(i).toString());
        }

            
            {
                this$1 = MainPageFragment.this;
                super();
            }
    }


    // Unreferenced inner class com/redbear/redbearbleclient/MainPage$MainPageFragment$3

/* anonymous class */
    class MainPageFragment._cls3
        implements android.widget.AdapterView.OnItemClickListener
    {

        final MainPageFragment this$1;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if (mArrayList != null && !mArrayList.isEmpty() && i > 0)
            {
                Device device = (Device)mArrayList.get(i - 1);
                Intent intent = new Intent(getActivity(), com/redbear/redbearbleclient/StandardView);
                intent.putExtra("Device", device);
                getActivity().startActivity(intent);
                getActivity().overridePendingTransition(0x7f040002, 0x7f040005);
            }
        }

            
            {
                this$1 = MainPageFragment.this;
                super();
            }
    }

}
