.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Lcom/redbear/RedBearService/IRedBearServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    return-object v0
.end method


# virtual methods
.method public onDeviceConnectStateChange(Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;II[B[Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "deviceAddress"
    .parameter "name"
    .parameter "rssi"
    .parameter "bondState"
    .parameter "scanRecord"
    .parameter "uuids"

    .prologue
    .line 167
    return-void
.end method

.method public onDeviceReadValue([I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0, p1}, Lcom/redbear/protocol/RBLProtocol;->parseData([I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onDeviceRssiUpdate(Ljava/lang/String;II)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "rssi"
    .parameter "state"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
