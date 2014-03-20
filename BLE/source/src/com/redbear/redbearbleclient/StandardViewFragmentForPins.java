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
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.ParcelUuid;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.redbear.RedBearService.IRedBearServiceEventListener;
import com.redbear.RedBearService.RedBearService;
import com.redbear.protocol.IRBLProtocol;
import com.redbear.protocol.RBLProtocol;
import com.redbear.redbearbleclient.data.PinInfo;
import java.util.ArrayList;
import java.util.HashMap;

public class StandardViewFragmentForPins extends Fragment
    implements IRBLProtocol
{
    class PinAdapter extends BaseAdapter
    {

        Context context;
        SparseArray data;
        android.widget.CompoundButton.OnCheckedChangeListener mDigitolValueChangeListener;
        LayoutInflater mInflater;
        android.view.View.OnClickListener mModeClickListener;
        android.widget.SeekBar.OnSeekBarChangeListener mServoChangeListener;
        final StandardViewFragmentForPins this$0;

        private void setModeAction(ViewHolder viewholder, PinInfo pininfo)
        {
            viewholder.analog.setVisibility(8);
            viewholder.analog.setTag(Integer.valueOf(pininfo.pin));
            viewholder.digitol.setVisibility(8);
            viewholder.digitol.setTag(Integer.valueOf(pininfo.pin));
            viewholder.servo.setVisibility(8);
            viewholder.servo.setTag(Integer.valueOf(pininfo.pin));
            switch (pininfo.mode)
            {
            default:
                return;

            case 0: // '\0'
                viewholder.digitol.setVisibility(0);
                viewholder.digitol.setEnabled(false);
                if (pininfo.value == 1)
                {
                    viewholder.digitol.setChecked(true);
                    return;
                } else
                {
                    viewholder.digitol.setChecked(false);
                    return;
                }

            case 1: // '\001'
                viewholder.digitol.setVisibility(0);
                viewholder.digitol.setEnabled(true);
                if (pininfo.value == 1)
                {
                    viewholder.digitol.setChecked(true);
                } else
                {
                    viewholder.digitol.setChecked(false);
                }
                viewholder.digitol.setOnCheckedChangeListener(mDigitolValueChangeListener);
                return;

            case 2: // '\002'
                viewholder.analog.setVisibility(0);
                viewholder.analog.setText((new StringBuilder()).append(pininfo.value).toString());
                return;

            case 3: // '\003'
            case 4: // '\004'
                viewholder.servo.setVisibility(0);
                viewholder.servo.setProgress(pininfo.value);
                viewholder.servo.setOnSeekBarChangeListener(mServoChangeListener);
                return;
            }
        }

        public int getCount()
        {
            if (data != null)
            {
                return data.size();
            } else
            {
                return 0;
            }
        }

        public Object getItem(int i)
        {
            return null;
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            int j = data.keyAt(i);
            PinInfo pininfo = (PinInfo)data.get(j);
            ViewHolder viewholder;
            String s;
            if (view == null)
            {
                view = mInflater.inflate(0x7f030007, null);
                viewholder = new ViewHolder();
                viewholder.pin = (TextView)view.findViewById(0x7f09001a);
                viewholder.mode = (Button)view.findViewById(0x7f09001b);
                viewholder.servo = (SeekBar)view.findViewById(0x7f09001e);
                viewholder.analog = (TextView)view.findViewById(0x7f09001d);
                viewholder.digitol = (Switch)view.findViewById(0x7f09001c);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            s = "";
            if (pininfo.pin < 10)
            {
                s = "0";
            }
            viewholder.pin.setText((new StringBuilder("Pin:\t")).append(s).append(pininfo.pin).toString());
            viewholder.mode.setText(getStateStr(pininfo.mode));
            viewholder.mode.setTag(Integer.valueOf(j));
            viewholder.mode.setOnClickListener(mModeClickListener);
            setModeAction(viewholder, pininfo);
            return view;
        }


        public PinAdapter(Context context1, SparseArray sparsearray)
        {
            this$0 = StandardViewFragmentForPins.this;
            super();
            data = null;
            mDigitolValueChangeListener = new _cls1();
            mServoChangeListener = new _cls2();
            mModeClickListener = new _cls3();
            data = sparsearray;
            context = context1;
            mInflater = LayoutInflater.from(context1);
        }
    }

    class PinAdapter.ViewHolder
    {

        TextView analog;
        Switch digitol;
        Button mode;
        TextView pin;
        SeekBar servo;
        final PinAdapter this$1;

        PinAdapter.ViewHolder()
        {
            this$1 = PinAdapter.this;
            super();
        }
    }


    final String TAG;
    HashMap changeValues;
    boolean isFirstReadPin;
    boolean isFirstReadRssi;
    ListView listView;
    PinAdapter mAdapter;
    MainPage.Device mDevice;
    Handler mHandler;
    android.os.Handler.Callback mHandlerCallback = new android.os.Handler.Callback() {

        final StandardViewFragmentForPins this$0;

        public boolean handleMessage(Message message)
        {
            if (mRedBearService != null && mDevice != null)
            {
                mRedBearService.readRssi(mDevice.address);
            }
            return true;
        }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
    };
    final IRedBearServiceEventListener mIRedBearServiceEventListener;
    ProgressBar mLoading;
    RBLProtocol mProtocol;
    RedBearService mRedBearService;
    ServiceConnection mServiceConnection = new ServiceConnection() {

        final StandardViewFragmentForPins this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mRedBearService = ((com.redbear.RedBearService.RedBearService.LocalBinder)ibinder).getService();
            Log.e("onServiceConnected", (new StringBuilder("mBearService : ")).append(mRedBearService).toString());
            if (mRedBearService != null && mDevice != null)
            {
                if (mProtocol != null)
                {
                    mProtocol.setmIRedBearService(mRedBearService);
                }
                mRedBearService.setListener(mIRedBearServiceEventListener);
                textName.post(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        mRedBearService.connectDevice(mDevice.address, false);
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Log.e("onServiceConnected", "onServiceDisconnected");
            mRedBearService = null;
        }


            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
    };
    SparseArray pins;
    RelativeLayout select_window;
    TextView textName;
    TextView textRssi;

    public StandardViewFragmentForPins()
    {
        TAG = "StandardViewFragmentForPins";
        isFirstReadRssi = true;
        isFirstReadPin = true;
        mIRedBearServiceEventListener = new IRedBearServiceEventListener() {

            final StandardViewFragmentForPins this$0;

            public void onDeviceConnectStateChange(final String deviceAddress, int i)
            {
                if (getActivity() != null)
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
            }

            public void onDeviceFound(String s, String s1, int i, int j, byte abyte0[], ParcelUuid aparceluuid[])
            {
            }

            public void onDeviceReadValue(int ai[])
            {
                if (mProtocol != null)
                {
                    mProtocol.parseData(ai);
                }
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
                        if (isFirstReadRssi)
                        {
                            mHandler.sendEmptyMessageDelayed(0, 1000L);
                            isFirstReadRssi = false;
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
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
        };
        mHandler = new Handler(mHandlerCallback);
    }

    public StandardViewFragmentForPins(MainPage.Device device)
    {
        TAG = "StandardViewFragmentForPins";
        isFirstReadRssi = true;
        isFirstReadPin = true;
        mIRedBearServiceEventListener = new _cls2();
        mHandler = new Handler(mHandlerCallback);
        mDevice = device;
        pins = new SparseArray();
        changeValues = new HashMap();
    }

    protected Button createModeButton(String s)
    {
        Button button = new Button(getActivity());
        button.setPadding(20, 5, 20, 5);
        button.setText(s);
        return button;
    }

    protected void deviceConnectStateChange(String s, int i)
    {
        if (i == 2)
        {
            Toast.makeText(getActivity(), "Connected", 0).show();
            if (textRssi != null)
            {
                textRssi.postDelayed(new Runnable() {

                    final StandardViewFragmentForPins this$0;

                    public void run()
                    {
                        if (mProtocol != null)
                        {
                            mProtocol.queryProtocolVersion();
                        }
                    }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
                }, 300L);
            }
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
        if (mRedBearService != null)
        {
            mRedBearService.disconnectDevice(mDevice.address);
        }
    }

    protected String getStateStr(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return "INPUT";

        case 1: // '\001'
            return "OUTPUT";

        case 2: // '\002'
            return "ANALOG";

        case 4: // '\004'
            return "SERVO";

        case 3: // '\003'
            return "PWM";
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030002, null);
        textRssi = (TextView)view.findViewById(0x7f090003);
        textName = (TextView)view.findViewById(0x7f090002);
        listView = (ListView)view.findViewById(0x7f090008);
        listView.setEnabled(false);
        mLoading = (ProgressBar)view.findViewById(0x7f090007);
        if (mDevice != null)
        {
            textName.setText(mDevice.name);
            mDevice.rssi = 0;
            textRssi.setText((new StringBuilder("Rssi : ")).append(mDevice.rssi).toString());
            mProtocol = new RBLProtocol(mDevice.address);
            mProtocol.setIRBLProtocol(this);
        }
        return view;
    }

    public void onDestroy()
    {
        mHandler.removeMessages(0);
        disconnectDevice();
        getActivity().unbindService(mServiceConnection);
        super.onDestroy();
    }

    public void onResume()
    {
        Intent intent = new Intent("com.redbear.RedBearService.RedBearService");
        getActivity().bindService(intent, mServiceConnection, 1);
        super.onResume();
    }

    public void protocolDidReceiveCustomData(int ai[], int i)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("protocolDidReceiveCustomData data : ")).append(ai).append(", length : ").append(i).toString());
        int j = ai.length;
        char ac[] = new char[j];
        int k = 0;
        do
        {
            if (k >= j)
            {
                String s = new String(ac);
                Log.e("StandardViewFragmentForPins", (new StringBuilder("temp : ")).append(s).toString());
                if (s.startsWith("ABC") && getActivity() != null)
                {
                    getActivity().runOnUiThread(new Runnable() {

                        final StandardViewFragmentForPins this$0;

                        public void run()
                        {
                            if (mLoading != null)
                            {
                                mLoading.setVisibility(8);
                            }
                            if (changeValues == null) goto _L2; else goto _L1
_L1:
                            int l;
                            int i1;
                            l = pins.size();
                            i1 = 0;
_L6:
                            if (i1 < l) goto _L4; else goto _L3
_L3:
                            changeValues = null;
                            updateData();
                            isFirstReadPin = false;
_L2:
                            listView.setEnabled(true);
                            return;
_L4:
                            int j1 = pins.keyAt(i1);
                            PinInfo pininfo = (PinInfo)pins.get(j1);
                            PinInfo pininfo1 = (PinInfo)changeValues.get((new StringBuilder(String.valueOf(j1))).toString());
                            if (pininfo1 != null)
                            {
                                pininfo.mode = pininfo1.mode;
                                pininfo.value = pininfo1.value;
                            }
                            i1++;
                            if (true) goto _L6; else goto _L5
_L5:
                        }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
                    });
                }
                return;
            }
            ac[k] = (char)ai[k];
            k++;
        } while (true);
    }

    public void protocolDidReceivePinCapability(int i, int j)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("protocolDidReceivePinCapability pin : ")).append(i).append(", value : ").append(j).toString());
        if (j == 0)
        {
            Log.e("StandardViewFragmentForPins", " - Nothing");
        } else
        if (pins != null)
        {
            PinInfo pininfo = new PinInfo();
            pininfo.pin = i;
            ArrayList arraylist = new ArrayList();
            arraylist.add(Integer.valueOf(0));
            if ((j & 1) == 1)
            {
                Log.e("StandardViewFragmentForPins", " - DIGITAL (I/O)");
                arraylist.add(Integer.valueOf(1));
            }
            if ((j & 2) == 2)
            {
                Log.e("StandardViewFragmentForPins", " - ANALOG");
                arraylist.add(Integer.valueOf(2));
            }
            if ((j & 4) == 4)
            {
                Log.e("StandardViewFragmentForPins", " - PWM");
                arraylist.add(Integer.valueOf(3));
            }
            if ((j & 8) == 8)
            {
                Log.e("StandardViewFragmentForPins", " - SERVO");
                arraylist.add(Integer.valueOf(4));
            }
            int k = arraylist.size();
            pininfo.modes = new int[k];
            int l = 0;
            do
            {
                if (l >= k)
                {
                    pins.put(i, pininfo);
                    arraylist.clear();
                    updateData();
                    return;
                }
                pininfo.modes[l] = ((Integer)arraylist.get(l)).intValue();
                l++;
            } while (true);
        }
    }

    public void protocolDidReceivePinData(int i, int j, int k)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("protocolDidReceivePinData pin : ")).append(i).append(", mode : ").append(j).append(", value : ").append(k).toString());
        if (pins == null)
        {
            return;
        }
        if (isFirstReadPin)
        {
            PinInfo pininfo = new PinInfo();
            pininfo.pin = i;
            pininfo.mode = j;
            pininfo.value = k;
            changeValues.put((new StringBuilder(String.valueOf(i))).toString(), pininfo);
            return;
        } else
        {
            PinInfo pininfo1 = (PinInfo)pins.get(i);
            pininfo1.mode = j;
            pininfo1.value = k;
            updateData();
            return;
        }
    }

    public void protocolDidReceivePinMode(int i, int j)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("protocolDidReceivePinCapability pin : ")).append(i).append(", mode : ").append(j).toString());
        if (pins == null)
        {
            return;
        } else
        {
            ((PinInfo)pins.get(i)).mode = j;
            updateData();
            return;
        }
    }

    public void protocolDidReceiveProtocolVersion(int i, int j, int k)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("major : ")).append(i).append(", minor : ").append(j).append(", bugfix : ").append(k).toString());
        if (mProtocol != null)
        {
            int ai[] = {
                66, 76, 69
            };
            mProtocol.sendCustomData(ai, 3);
            if (textRssi != null)
            {
                textRssi.postDelayed(new Runnable() {

                    final StandardViewFragmentForPins this$0;

                    public void run()
                    {
                        mProtocol.queryTotalPinCount();
                    }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
                }, 300L);
            }
        }
    }

    public void protocolDidReceiveTotalPinCount(int i)
    {
        Log.e("StandardViewFragmentForPins", (new StringBuilder("protocolDidReceiveTotalPinCount count : ")).append(i).toString());
        if (mProtocol != null)
        {
            mProtocol.queryPinAll();
        }
    }

    protected void showModeSelect(PinInfo pininfo)
    {
        if (getActivity() == null) goto _L2; else goto _L1
_L1:
        LinearLayout linearlayout;
        int ai[];
        int j;
        int i;
        AlphaAnimation alphaanimation;
        if (select_window == null)
        {
            select_window = new RelativeLayout(getActivity());
            select_window.setBackgroundColor(0x4f000000);
            select_window.setOnClickListener(new android.view.View.OnClickListener() {

                final StandardViewFragmentForPins this$0;

                public void onClick(View view)
                {
                    select_window.setVisibility(4);
                }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
            });
            linearlayout = new LinearLayout(getActivity());
            linearlayout.setId(0x123ff);
            linearlayout.setBackgroundColor(-1);
            linearlayout.setOrientation(1);
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams1.addRule(12, -1);
            select_window.addView(linearlayout, layoutparams1);
            getActivity().addContentView(select_window, new android.view.ViewGroup.LayoutParams(-1, -2));
        } else
        {
            linearlayout = (LinearLayout)select_window.findViewById(0x123ff);
        }
        select_window.setVisibility(4);
        linearlayout.removeAllViews();
        ai = pininfo.modes;
        i = ai.length;
        j = 0;
_L6:
        if (j < i) goto _L4; else goto _L3
_L3:
        alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(350L);
        alphaanimation.setInterpolator(new DecelerateInterpolator());
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final StandardViewFragmentForPins this$0;

            public void onAnimationEnd(Animation animation)
            {
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                select_window.setVisibility(0);
            }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
        });
        select_window.startAnimation(alphaanimation);
_L2:
        return;
_L4:
        final int btn_mode = ai[j];
        String s = getStateStr(btn_mode);
        if (s != null)
        {
            final int btn_pin = pininfo.pin;
            Button button = createModeButton(s);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final StandardViewFragmentForPins this$0;
                private final int val$btn_mode;
                private final int val$btn_pin;

                public void onClick(View view)
                {
                    if (mProtocol != null)
                    {
                        mProtocol.setPinMode(btn_pin, btn_mode);
                    }
                    select_window.setVisibility(4);
                }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                btn_pin = i;
                btn_mode = j;
                super();
            }
            });
            linearlayout.addView(button, layoutparams);
        }
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void updateData()
    {
        if (textRssi != null)
        {
            textRssi.postDelayed(new Runnable() {

                final StandardViewFragmentForPins this$0;

                public void run()
                {
                    if (mAdapter == null)
                    {
                        mAdapter = new PinAdapter(getActivity(), pins);
                        listView.setAdapter(mAdapter);
                        return;
                    } else
                    {
                        mAdapter.notifyDataSetChanged();
                        return;
                    }
                }

            
            {
                this$0 = StandardViewFragmentForPins.this;
                super();
            }
            }, 50L);
        }
    }

    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1

/* anonymous class */
    class PinAdapter._cls1
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final PinAdapter this$1;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (compoundbutton.isEnabled())
            {
                Byte byte1 = (Byte)compoundbutton.getTag();
                if (byte1 != null && mProtocol != null)
                {
                    RBLProtocol rblprotocol = mProtocol;
                    byte byte0 = byte1.byteValue();
                    int i;
                    if (flag)
                    {
                        i = 1;
                    } else
                    {
                        i = 0;
                    }
                    rblprotocol.digitalWrite(byte0, i);
                }
            }
        }

            
            {
                this$1 = PinAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2

/* anonymous class */
    class PinAdapter._cls2
        implements android.widget.SeekBar.OnSeekBarChangeListener
    {

        final PinAdapter this$1;

        public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
            Byte byte1;
label0:
            {
                if (flag)
                {
                    byte1 = (Byte)seekbar.getTag();
                    if (byte1 != null && mProtocol != null)
                    {
                        if (((PinInfo)data.get(byte1.byteValue())).mode != 3)
                        {
                            break label0;
                        }
                        mProtocol.analogWrite(byte1.byteValue(), (byte)i);
                    }
                }
                return;
            }
            mProtocol.servoWrite(byte1.byteValue(), (byte)i);
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
        }

            
            {
                this$1 = PinAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3

/* anonymous class */
    class PinAdapter._cls3
        implements android.view.View.OnClickListener
    {

        final PinAdapter this$1;

        public void onClick(View view)
        {
            Integer integer = (Integer)view.getTag();
            if (integer != null)
            {
                int i = integer.intValue();
                PinInfo pininfo = (PinInfo)data.get(i);
                showModeSelect(pininfo);
            }
        }

            
            {
                this$1 = PinAdapter.this;
                super();
            }
    }

}
