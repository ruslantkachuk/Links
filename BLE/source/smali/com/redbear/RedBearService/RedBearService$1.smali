.class Lcom/redbear/RedBearService/RedBearService$1;
.super Ljava/lang/Object;
.source "RedBearService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/RedBearService/RedBearService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/RedBearService/RedBearService;


# direct methods
.method constructor <init>(Lcom/redbear/RedBearService/RedBearService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/RedBearService/RedBearService$1;->this$0:Lcom/redbear/RedBearService/RedBearService;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7
    .parameter "device"
    .parameter "rssi"
    .parameter "scanRecord"

    .prologue
    .line 199
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScanResult (device : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService$1;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v0}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIScanDeviceListener (device : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService$1;->this$0:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0, p1}, Lcom/redbear/RedBearService/RedBearService;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 205
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService$1;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v0}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    move v3, p2

    move-object v5, p3

    .line 205
    invoke-interface/range {v0 .. v6}, Lcom/redbear/RedBearService/IRedBearServiceEventListener;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;II[B[Landroid/os/ParcelUuid;)V

    .line 209
    :cond_0
    return-void
.end method
