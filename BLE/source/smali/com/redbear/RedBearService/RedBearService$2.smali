.class Lcom/redbear/RedBearService/RedBearService$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "RedBearService.java"


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
    iput-object p1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    .line 212
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 10
    .parameter "gatt"
    .parameter "characteristic"

    .prologue
    const/16 v9, 0x11

    .line 218
    sget-object v6, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onCharacteristicChanged ( characteristic : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .line 221
    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p2, v9, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v4

    .line 223
    .local v4, temp:Ljava/lang/Integer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-nez v4, :cond_1

    .line 231
    new-array v3, v1, [I

    .line 232
    .local v3, received:[I
    const/4 v0, 0x0

    .line 233
    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    iget-object v6, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v6}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 239
    iget-object v6, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v6}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/redbear/RedBearService/IRedBearServiceEventListener;->onDeviceReadValue([I)V

    .line 242
    :cond_0
    return-void

    .line 225
    .end local v0           #i:I
    .end local v3           #received:[I
    .restart local v1       #i:I
    :cond_1
    sget-object v6, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "temp: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    .line 227
    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p2, v9, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v4

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 233
    .end local v1           #i:I
    .restart local v0       #i:I
    .restart local v3       #received:[I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 234
    .local v2, integer:Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 247
    if-nez p3, :cond_0

    .line 248
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCharacteristicRead ( characteristic :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,status, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 257
    if-nez p3, :cond_0

    .line 258
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCharacteristicWrite ( characteristic :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .parameter "gatt"
    .parameter "status"
    .parameter "newState"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 268
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionStateChange (device : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    const-string v3, ", status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , newState :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v1}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v1}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-interface {v1, v2, p3}, Lcom/redbear/RedBearService/IRedBearServiceEventListener;->onDeviceConnectStateChange(Ljava/lang/String;I)V

    .line 277
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, v1, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 279
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v1, v0}, Lcom/redbear/RedBearService/RedBearService;->readDeviceRssi(Landroid/bluetooth/BluetoothDevice;)V

    .line 281
    :cond_1
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .parameter "gatt"
    .parameter "device"
    .parameter "status"

    .prologue
    .line 286
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDescriptorRead (device : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , status :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 289
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .parameter "gatt"
    .parameter "arg0"
    .parameter "status"

    .prologue
    .line 294
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDescriptorWrite (arg0 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , status :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 297
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .parameter "gatt"
    .parameter "rssi"
    .parameter "status"

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 309
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReadRemoteRssi (device : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , rssi :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , status :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v1}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;
    invoke-static {v1}, Lcom/redbear/RedBearService/RedBearService;->access$0(Lcom/redbear/RedBearService/RedBearService;)Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    move-result-object v1

    .line 314
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-interface {v1, v2, p2, p3}, Lcom/redbear/RedBearService/IRedBearServiceEventListener;->onDeviceRssiUpdate(Ljava/lang/String;II)V

    .line 317
    :cond_0
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .parameter "gatt"
    .parameter "status"

    .prologue
    .line 301
    sget-object v0, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReliableWriteCompleted (gatt : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string v2, " , status :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    .line 304
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8
    .parameter "gatt"
    .parameter "status"

    .prologue
    .line 321
    iget-object v4, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    iget-object v4, v4, Lcom/redbear/RedBearService/RedBearService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 322
    sget-object v5, Lcom/redbear/RedBearService/RedBearService;->RBL_SERVICE:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 324
    .local v2, rblService:Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_0

    .line 325
    sget-object v4, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v5, "RBL service not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, Characteristic:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 337
    sget-object v4, Lcom/redbear/RedBearService/RedBearService;->RBL_DEVICE_RX_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 338
    .local v3, rxCharc:Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v3, :cond_2

    .line 339
    sget-object v4, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v5, "RBL RX Characteristic not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v3           #rxCharc:Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 333
    .local v1, a:Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v5, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " a =  uuid : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v1           #a:Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v3       #rxCharc:Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    iget-object v4, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    sget-object v5, Lcom/redbear/RedBearService/RedBearService;->RBL_DEVICE_TX_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    #setter for: Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v4, v5}, Lcom/redbear/RedBearService/RedBearService;->access$1(Lcom/redbear/RedBearService/RedBearService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 344
    iget-object v4, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    #getter for: Lcom/redbear/RedBearService/RedBearService;->txCharc:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v4}, Lcom/redbear/RedBearService/RedBearService;->access$2(Lcom/redbear/RedBearService/RedBearService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    if-nez v4, :cond_3

    .line 345
    sget-object v4, Lcom/redbear/RedBearService/RedBearService;->TAG:Ljava/lang/String;

    const-string v5, "RBL RX Characteristic not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_3
    iget-object v4, p0, Lcom/redbear/RedBearService/RedBearService$2;->this$0:Lcom/redbear/RedBearService/RedBearService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/redbear/RedBearService/RedBearService;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method
