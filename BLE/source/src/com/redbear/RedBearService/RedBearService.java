// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.RedBearService;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.redbear.RedBearService:
//            IRedBearServiceEventListener

public class RedBearService extends Service
{
    public class LocalBinder extends Binder
    {

        final RedBearService this$0;

        public RedBearService getService()
        {
            return RedBearService.this;
        }

        public LocalBinder()
        {
            this$0 = RedBearService.this;
            super();
        }
    }


    public static final UUID CCC = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    public static final UUID RBL_DEVICE_RX_UUID = UUID.fromString("713D0002-503E-4C75-BA94-3148F18D941E");
    public static final UUID RBL_DEVICE_TX_UUID = UUID.fromString("713D0003-503E-4C75-BA94-3148F18D941E");
    public static final UUID RBL_SERVICE = UUID.fromString("713D0000-503E-4C75-BA94-3148F18D941E");
    public static final UUID SERIAL_NUMBER_STRING = UUID.fromString("00002A25-0000-1000-8000-00805f9b34fb");
    static final String TAG = com/redbear/RedBearService/RedBearService.getName();
    private final IBinder mBinder = new LocalBinder();
    public BluetoothGatt mBluetoothGatt;
    private BluetoothAdapter mBtAdapter;
    HashMap mDevices;
    private final BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {

        final RedBearService this$0;

        public void onCharacteristicChanged(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
        {
            int i;
            Integer integer;
            ArrayList arraylist;
            Log.d(RedBearService.TAG, (new StringBuilder("onCharacteristicChanged ( characteristic : ")).append(bluetoothgattcharacteristic).append(")").toString());
            i = 0 + 1;
            integer = bluetoothgattcharacteristic.getIntValue(17, 0);
            arraylist = new ArrayList();
_L3:
            if (integer != null) goto _L2; else goto _L1
_L1:
            int ai[];
            int k;
            Iterator iterator;
            ai = new int[i];
            k = 0;
            iterator = arraylist.iterator();
_L4:
            if (!iterator.hasNext())
            {
                if (mIRedBearServiceEventListener != null)
                {
                    mIRedBearServiceEventListener.onDeviceReadValue(ai);
                }
                return;
            }
            break MISSING_BLOCK_LABEL_162;
_L2:
            Log.e(RedBearService.TAG, (new StringBuilder("temp: ")).append(integer).toString());
            arraylist.add(integer);
            int j = i + 1;
            integer = bluetoothgattcharacteristic.getIntValue(17, i);
            i = j;
              goto _L3
            Integer integer1 = (Integer)iterator.next();
            int l = k + 1;
            ai[k] = integer1.intValue();
            k = l;
              goto _L4
        }

        public void onCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
        {
            if (i == 0)
            {
                Log.d(RedBearService.TAG, (new StringBuilder("onCharacteristicRead ( characteristic :")).append(bluetoothgattcharacteristic).append(" ,status, : ").append(i).append(")").toString());
            }
        }

        public void onCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
        {
            super.onCharacteristicWrite(bluetoothgatt, bluetoothgattcharacteristic, i);
            if (i == 0)
            {
                Log.d(RedBearService.TAG, (new StringBuilder("onCharacteristicWrite ( characteristic :")).append(bluetoothgattcharacteristic).append(" ,status : ").append(i).append(")").toString());
            }
        }

        public void onConnectionStateChange(BluetoothGatt bluetoothgatt, int i, int j)
        {
            BluetoothDevice bluetoothdevice = bluetoothgatt.getDevice();
            Log.d(RedBearService.TAG, (new StringBuilder("onConnectionStateChange (device : ")).append(bluetoothdevice).append(", status : ").append(i).append(" , newState :  ").append(j).append(")").toString());
            if (mIRedBearServiceEventListener != null)
            {
                mIRedBearServiceEventListener.onDeviceConnectStateChange(bluetoothdevice.getAddress(), j);
            }
            if (j == 2)
            {
                mBluetoothGatt.discoverServices();
                readDeviceRssi(bluetoothdevice);
            }
        }

        public void onDescriptorRead(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
        {
            Log.d(RedBearService.TAG, (new StringBuilder("onDescriptorRead (device : ")).append(bluetoothgattdescriptor).append(" , status :  ").append(i).append(")").toString());
            super.onDescriptorRead(bluetoothgatt, bluetoothgattdescriptor, i);
        }

        public void onDescriptorWrite(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
        {
            Log.d(RedBearService.TAG, (new StringBuilder("onDescriptorWrite (arg0 : ")).append(bluetoothgattdescriptor).append(" , status :  ").append(i).append(")").toString());
            super.onDescriptorWrite(bluetoothgatt, bluetoothgattdescriptor, i);
        }

        public void onReadRemoteRssi(BluetoothGatt bluetoothgatt, int i, int j)
        {
            BluetoothDevice bluetoothdevice = bluetoothgatt.getDevice();
            Log.d(RedBearService.TAG, (new StringBuilder("onReadRemoteRssi (device : ")).append(bluetoothdevice).append(" , rssi :  ").append(i).append(" , status :  ").append(j).append(")").toString());
            if (mIRedBearServiceEventListener != null)
            {
                mIRedBearServiceEventListener.onDeviceRssiUpdate(bluetoothdevice.getAddress(), i, j);
            }
        }

        public void onReliableWriteCompleted(BluetoothGatt bluetoothgatt, int i)
        {
            Log.d(RedBearService.TAG, (new StringBuilder("onReliableWriteCompleted (gatt : ")).append(i).append(" , status :  ").append(i).append(")").toString());
            super.onReliableWriteCompleted(bluetoothgatt, i);
        }

        public void onServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
        {
            BluetoothGattService bluetoothgattservice = mBluetoothGatt.getService(RedBearService.RBL_SERVICE);
            if (bluetoothgattservice == null)
            {
                Log.e(RedBearService.TAG, "RBL service not found!");
                return;
            }
            Iterator iterator = bluetoothgattservice.getCharacteristics().iterator();
            BluetoothGattCharacteristic bluetoothgattcharacteristic1;
            do
            {
                if (!iterator.hasNext())
                {
                    bluetoothgattcharacteristic1 = bluetoothgattservice.getCharacteristic(RedBearService.RBL_DEVICE_RX_UUID);
                    if (bluetoothgattcharacteristic1 == null)
                    {
                        Log.e(RedBearService.TAG, "RBL RX Characteristic not found!");
                        return;
                    }
                    break;
                }
                BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)iterator.next();
                Log.e(RedBearService.TAG, (new StringBuilder(" a =  uuid : ")).append(bluetoothgattcharacteristic.getUuid()).toString());
            } while (true);
            txCharc = bluetoothgattservice.getCharacteristic(RedBearService.RBL_DEVICE_TX_UUID);
            if (txCharc == null)
            {
                Log.e(RedBearService.TAG, "RBL RX Characteristic not found!");
                return;
            } else
            {
                enableNotification(true, bluetoothgattcharacteristic1);
                return;
            }
        }

            
            {
                this$0 = RedBearService.this;
                super();
            }
    };
    private IRedBearServiceEventListener mIRedBearServiceEventListener;
    private android.bluetooth.BluetoothAdapter.LeScanCallback mLeScanCallback;
    private BluetoothGattCharacteristic txCharc;

    public RedBearService()
    {
        mBtAdapter = null;
        mBluetoothGatt = null;
        mDevices = null;
        txCharc = null;
        mLeScanCallback = new android.bluetooth.BluetoothAdapter.LeScanCallback() {

            final RedBearService this$0;

            public void onLeScan(BluetoothDevice bluetoothdevice, int i, byte abyte0[])
            {
                Log.d(RedBearService.TAG, (new StringBuilder("onScanResult (device : ")).append(bluetoothdevice.getName()).append(")").toString());
                if (mIRedBearServiceEventListener != null)
                {
                    Log.d(RedBearService.TAG, (new StringBuilder("mIScanDeviceListener (device : ")).append(bluetoothdevice.getName()).append(")").toString());
                    addDevice(bluetoothdevice);
                    mIRedBearServiceEventListener.onDeviceFound(bluetoothdevice.getAddress(), bluetoothdevice.getName(), i, bluetoothdevice.getBondState(), abyte0, bluetoothdevice.getUuids());
                }
            }

            
            {
                this$0 = RedBearService.this;
                super();
            }
        };
    }

    private void startScanDevices()
    {
        if (mBtAdapter == null)
        {
            return;
        } else
        {
            mBtAdapter.startLeScan(mLeScanCallback);
            return;
        }
    }

    void addDevice(BluetoothDevice bluetoothdevice)
    {
        String s = bluetoothdevice.getAddress();
        mDevices.put(s, bluetoothdevice);
    }

    protected void connect(BluetoothDevice bluetoothdevice, boolean flag)
    {
        mBluetoothGatt = bluetoothdevice.connectGatt(this, flag, mGattCallback);
    }

    public void connectDevice(String s, boolean flag)
    {
        BluetoothDevice bluetoothdevice = (BluetoothDevice)mDevices.get(s);
        if (bluetoothdevice != null)
        {
            connect(bluetoothdevice, flag);
        }
    }

    protected void disconnect(BluetoothDevice bluetoothdevice)
    {
        mBluetoothGatt.disconnect();
        mBluetoothGatt.close();
    }

    public void disconnectDevice(String s)
    {
        BluetoothDevice bluetoothdevice = (BluetoothDevice)mDevices.get(s);
        if (bluetoothdevice != null)
        {
            disconnect(bluetoothdevice);
        }
    }

    public boolean enableNotification(boolean flag, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (mBluetoothGatt != null && mBluetoothGatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag))
        {
            BluetoothGattDescriptor bluetoothgattdescriptor = bluetoothgattcharacteristic.getDescriptor(CCC);
            if (bluetoothgattdescriptor != null)
            {
                if (flag)
                {
                    Log.i(TAG, "enable notification");
                    bluetoothgattdescriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                } else
                {
                    Log.i(TAG, "disable notification");
                    bluetoothgattdescriptor.setValue(BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
                }
                return mBluetoothGatt.writeDescriptor(bluetoothgattdescriptor);
            }
        }
        return false;
    }

    public boolean isBLEDevice(BluetoothDevice bluetoothdevice)
    {
        return mBluetoothGatt != null;
    }

    public boolean isBLEDevice(String s)
    {
        if ((BluetoothDevice)mDevices.get(s) != null)
        {
            return isBLEDevice(s);
        } else
        {
            return false;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return mBinder;
    }

    public void onCreate()
    {
        super.onCreate();
        for (mBtAdapter = ((BluetoothManager)getSystemService("bluetooth")).getAdapter(); mBtAdapter == null || mDevices != null;)
        {
            return;
        }

        mDevices = new HashMap();
    }

    public void onDestroy()
    {
        if (mBluetoothGatt == null)
        {
            return;
        } else
        {
            mBluetoothGatt.close();
            mBluetoothGatt = null;
            super.onDestroy();
            return;
        }
    }

    protected void readDeviceRssi(BluetoothDevice bluetoothdevice)
    {
        if (mBluetoothGatt != null)
        {
            mBluetoothGatt.readRemoteRssi();
        }
    }

    protected void readDeviceRssi(String s)
    {
        BluetoothDevice bluetoothdevice = (BluetoothDevice)mDevices.get(s);
        if (bluetoothdevice != null)
        {
            readDeviceRssi(bluetoothdevice);
        }
    }

    public void readRssi(String s)
    {
        readDeviceRssi(s);
    }

    public void setListener(IRedBearServiceEventListener iredbearserviceeventlistener)
    {
        mIRedBearServiceEventListener = iredbearserviceeventlistener;
    }

    public void startScanDevice()
    {
        if (mDevices != null)
        {
            mDevices.clear();
        } else
        {
            mDevices = new HashMap();
        }
        startScanDevices();
    }

    public void stopScanDevice()
    {
        stopScanDevices();
    }

    protected void stopScanDevices()
    {
        if (mBtAdapter == null)
        {
            return;
        } else
        {
            mBtAdapter.stopLeScan(mLeScanCallback);
            return;
        }
    }

    public void writeValue(String s, char ac[])
    {
label0:
        {
            if (txCharc != null)
            {
                String s1 = new String(ac);
                if (!txCharc.setValue(s1))
                {
                    break label0;
                }
                if (!mBluetoothGatt.writeCharacteristic(txCharc))
                {
                    Log.e(TAG, "Error: writeCharacteristic!");
                }
            }
            return;
        }
        Log.e(TAG, "Error: setValue!");
    }




}
