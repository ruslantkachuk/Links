// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.ParcelUuid;
import android.text.Editable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.redbear.RedBearService.IRedBearServiceEventListener;
import com.redbear.RedBearService.RedBearService;

public class StandardViewFragmentForChat extends Fragment
{

    public static final String ARG_SECTION_NUMBER = "section_number";
    Button btnSend;
    ServiceConnection conn = new ServiceConnection() {

        final StandardViewFragmentForChat this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            Log.e("onServiceConnected", (new StringBuilder("mBearService : ")).append(mBearService).toString());
            if (mBearService != null && mDevice != null)
            {
                mBearService.setListener(mIScanDeviceListener);
                textName.post(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        mBearService.connectDevice(mDevice.address, false);
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Log.e("onServiceConnected", "onServiceDisconnected");
            mBearService = null;
        }


            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }
    };
    EditText editInput;
    EditText editOutput;
    boolean isFirst;
    RedBearService mBearService;
    MainPage.Device mDevice;
    Handler mHandler = new Handler() {

        final StandardViewFragmentForChat this$0;

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            if (mBearService != null && mDevice != null)
            {
                mBearService.readRssi(mDevice.address);
            }
        }

            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }
    };
    final IRedBearServiceEventListener mIScanDeviceListener;
    android.view.View.OnClickListener mSendClick = new android.view.View.OnClickListener() {

        final StandardViewFragmentForChat this$0;

        public void onClick(View view)
        {
            if (!editOutput.getText().toString().isEmpty())
            {
                String s = editOutput.getText().toString();
                if (mBearService != null)
                {
                    char ac[] = s.toCharArray();
                    mBearService.writeValue(mDevice.address, ac);
                }
            }
        }

            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }
    };
    TextView textName;
    TextView textRssi;

    public StandardViewFragmentForChat()
    {
        textName = null;
        textRssi = null;
        editOutput = null;
        editInput = null;
        btnSend = null;
        isFirst = true;
        mIScanDeviceListener = new IRedBearServiceEventListener() {

            final StandardViewFragmentForChat this$0;

            public void onDeviceConnectStateChange(final String deviceAddress, int i)
            {
                getActivity().runOnUiThread(i. new Runnable() {

                    final _cls2 this$1;
                    private final String val$deviceAddress;
                    private final int val$state;

                    public void run()
                    {
                        deviceConnectStateChange(deviceAddress, state);
                    }

            
            {
                this$1 = final__pcls2;
                deviceAddress = s;
                state = I.this;
                super();
            }
                });
            }

            public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
            {
            }

            public void onDeviceReadValue(int ai[])
            {
                getActivity().runOnUiThread(ai. new Runnable() {

                    final _cls2 this$1;
                    private final int val$value[];

                    public void run()
                    {
                        int i = value.length;
                        char ac[] = new char[i];
                        int j = 0;
                        do
                        {
                            if (j >= i)
                            {
                                String s = new String(ac);
                                editInput.setText(s);
                                return;
                            }
                            ac[j] = (char)value[j];
                            j++;
                        } while (true);
                    }

            
            {
                this$1 = final__pcls2;
                value = _5B_I.this;
                super();
            }
                });
            }

            public void onDeviceRssiUpdate(final String deviceAddress, final int rssi, int i)
            {
                getActivity().runOnUiThread(i. new Runnable() {

                    final _cls2 this$1;
                    private final String val$deviceAddress;
                    private final int val$rssi;
                    private final int val$state;

                    public void run()
                    {
                        deviceRssiStateChange(deviceAddress, rssi, state);
                        if (isFirst)
                        {
                            mHandler.sendEmptyMessageDelayed(0, 1000L);
                            isFirst = false;
                            return;
                        } else
                        {
                            mHandler.sendEmptyMessageDelayed(0, 300L);
                            return;
                        }
                    }

            
            {
                this$1 = final__pcls2;
                deviceAddress = s;
                rssi = i;
                state = I.this;
                super();
            }
                });
            }


            
            {
                this$0 = StandardViewFragmentForChat.this;
                super();
            }
        };
    }

    public StandardViewFragmentForChat(MainPage.Device device)
    {
        textName = null;
        textRssi = null;
        editOutput = null;
        editInput = null;
        btnSend = null;
        isFirst = true;
        mIScanDeviceListener = new _cls2();
        mDevice = device;
    }

    protected void deviceConnectStateChange(String s, int i)
    {
        if (i == 2)
        {
            Toast.makeText(getActivity(), "Connected", 0).show();
        } else
        if (i == 0 && getActivity() != null)
        {
            Toast.makeText(getActivity(), "Disconnected", 0).show();
            getActivity().finish();
            return;
        }
    }

    protected void deviceRssiStateChange(String s, int i, int j)
    {
        if (j == 0 && s.equals(mDevice.address))
        {
            mDevice.rssi = i;
            textRssi.setText((new StringBuilder("Rssi : ")).append(i).toString());
        }
    }

    public void disconnectDevice()
    {
        if (mBearService != null)
        {
            mBearService.disconnectDevice(mDevice.address);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030001, null);
        textName = (TextView)view.findViewById(0x7f090002);
        textRssi = (TextView)view.findViewById(0x7f090003);
        editInput = (EditText)view.findViewById(0x7f090006);
        editOutput = (EditText)view.findViewById(0x7f090005);
        btnSend = (Button)view.findViewById(0x7f090004);
        btnSend.setOnClickListener(mSendClick);
        if (mDevice != null)
        {
            textName.setText(mDevice.name);
            mDevice.rssi = 0;
            textRssi.setText((new StringBuilder("Rssi : ")).append(mDevice.rssi).toString());
        }
        return view;
    }

    public void onDestroy()
    {
        mHandler.removeMessages(0);
        disconnectDevice();
        getActivity().unbindService(conn);
        super.onDestroy();
    }

    public void onResume()
    {
        Intent intent = new Intent("com.redbear.RedBearService.RedBearService");
        getActivity().bindService(intent, conn, 1);
        super.onResume();
    }
}
