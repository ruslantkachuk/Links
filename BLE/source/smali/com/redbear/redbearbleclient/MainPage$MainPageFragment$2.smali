.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$2;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Lcom/redbear/RedBearService/IRedBearServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$2;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectStateChange(Ljava/lang/String;I)V
    .locals 0
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    .line 218
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;II[B[Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "deviceAddress"
    .parameter "name"
    .parameter "rssi"
    .parameter "bondState"
    .parameter "scanRecord"
    .parameter "uuids"

    .prologue
    .line 187
    const-string v1, "onDeviceFound"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/redbear/redbearbleclient/MainPage$Device;

    invoke-direct {v0}, Lcom/redbear/redbearbleclient/MainPage$Device;-><init>()V

    .line 191
    .local v0, mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;
    iput-object p1, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    .line 193
    iput-object p2, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    .line 195
    iput p3, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 197
    iput p4, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->bondState:I

    .line 199
    iput-object p5, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->scanReadData:[B

    .line 201
    iput-object p6, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->uuids:[Landroid/os/ParcelUuid;

    .line 203
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$2;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-virtual {v1, v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->addDevice(Lcom/redbear/redbearbleclient/MainPage$Device;)V

    .line 204
    return-void
.end method

.method public onDeviceReadValue([I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 224
    return-void
.end method

.method public onDeviceRssiUpdate(Ljava/lang/String;II)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "rssi"
    .parameter "state"

    .prologue
    .line 210
    const-string v0, "MainPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceAddress : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rssi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method
