.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->readRssi(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 231
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 232
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Lcom/redbear/protocol/RBLProtocol;->queryProtocolVersion()V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Retry it!"

    .line 237
    const/4 v2, 0x0

    .line 236
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
