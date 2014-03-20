.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;
.super Ljava/lang/Object;
.source "StandardViewFragmentForChat.java"

# interfaces
.implements Lcom/redbear/RedBearService/IRedBearServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    return-object v0
.end method


# virtual methods
.method public onDeviceConnectStateChange(Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
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
    .line 76
    return-void
.end method

.method public onDeviceReadValue([I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;

    invoke-direct {v1, p0, p1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;[I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public onDeviceRssiUpdate(Ljava/lang/String;II)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "rssi"
    .parameter "state"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
