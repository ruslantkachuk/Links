.class public Lcom/redbear/RedBearService/RedBearService;
.super Landroid/app/Service;
.source "RedBearService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/RedBearService/RedBearService$LocalBinder;
    }
.end annotation


# static fields
.field public static final CCC:Ljava/util/UUID;

.field public static final RBL_DEVICE_RX_UUID:Ljava/util/UUID;

.field public static final RBL_DEVICE_TX_UUID:Ljava/util/UUID;

.field public static final RBL_SERVICE:Ljava/util/UUID;

.field public static final SERIAL_NUMBER_STRING:Ljava/util/UUID;

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field public mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "713D0000-503E-4C75-BA94-3148F18D941E"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->RBL_SERVICE:Ljava/util/UUID;

    .line 32
    const-string v0, "713D0002-503E-4C75-BA94-3148F18D941E"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->RBL_DEVICE_RX_UUID:Ljava/util/UUID;

    .line 35
    const-string v0, "713D0003-503E-4C75-BA94-3148F18D941E"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->RBL_DEVICE_TX_UUID:Ljava/util/UUID;

    .line 38
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->CCC:Ljava/util/UUID;

    .line 41
    const-string v0, "00002A25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/redbear/RedBearService/RedBearService;->SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 49
    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    .line 51
    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 122
    new-instance v0, Lcom/redbear/RedBearService/RedBearService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/redbear/RedBearService/RedBearService$LocalBinder;-><init>(Lcom/redbear/RedBearService/RedBearService;)V

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBinder:Landroid/os/IBinder;

    .line 194
    new-instance v0, Lcom/redbear/RedBearService/RedBearService$1;

    invoke-direct {v0, p0}, Lcom/redbear/RedBearService/RedBearService$1;-><init>(Lcom/redbear/RedBearService/RedBearService;)V

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 212
    new-instance v0, Lcom/redbear/RedBearService/RedBearService$2;

    invoke-direct {v0, p0}, Lcom/redbear/RedBearService/RedBearService$2;-><init>(Lcom/redbear/RedBearService/RedBearService;)V

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/redbear/RedBearService/RedBearService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$2(Lcom/redbear/RedBearService/RedBearService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method private startScanDevices()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0
.end method


# virtual methods
.method addDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "mDevice"

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method protected connect(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1
    .parameter "device"
    .parameter "autoconnect"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, p2, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 176
    return-void
.end method

.method public connectDevice(Ljava/lang/String;Z)V
    .locals 2
    .parameter "address"
    .parameter "autoconnect"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 81
    .local v0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0, p2}, Lcom/redbear/RedBearService/RedBearService;->connect(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 84
    :cond_0
    return-void
.end method

.method protected disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 180
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 181
    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 88
    .local v0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/redbear/RedBearService/RedBearService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 91
    :cond_0
    return-void
.end method

.method public enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .parameter "enable"
    .parameter "characteristic"

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v2, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    .line 359
    if-eqz v2, :cond_0

    .line 364
    sget-object v2, Lcom/redbear/RedBearService/RedBearService;->CCC:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 365
    .local v0, clientConfig:Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_0

    .line 369
    if-eqz p1, :cond_2

    .line 370
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v2, "enable notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 379
    :goto_1
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    goto :goto_0

    .line 374
    :cond_2
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v2, "disable notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1
.end method

.method public isBLEDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBLEDevice(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 73
    .local v0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/redbear/RedBearService/RedBearService;->isBLEDevice(Ljava/lang/String;)Z

    move-result v1

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/redbear/RedBearService/RedBearService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 129
    .local v0, bluetoothManager:Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 131
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto :goto_0
.end method

.method protected readDeviceRssi(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 172
    :cond_0
    return-void
.end method

.method protected readDeviceRssi(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 163
    .local v0, mDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lcom/redbear/RedBearService/RedBearService;->readDeviceRssi(Landroid/bluetooth/BluetoothDevice;)V

    .line 166
    :cond_0
    return-void
.end method

.method public readRssi(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceAddress"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/redbear/RedBearService/RedBearService;->readDeviceRssi(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setListener(Lcom/redbear/RedBearService/IRedBearServiceEventListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 69
    return-void
.end method

.method public startScanDevice()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/redbear/RedBearService/RedBearService;->startScanDevices()V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mDevices:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public stopScanDevice()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/redbear/RedBearService/RedBearService;->stopScanDevices()V

    .line 65
    return-void
.end method

.method protected stopScanDevices()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method

.method public writeValue(Ljava/lang/String;[C)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "data"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    .line 101
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v2, "Error: writeCharacteristic!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v2, "Error: setValue!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
