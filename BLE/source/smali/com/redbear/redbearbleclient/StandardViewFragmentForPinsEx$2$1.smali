.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->onDeviceRssiUpdate(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

.field private final synthetic val$deviceAddress:Ljava/lang/String;

.field private final synthetic val$rssi:I

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$deviceAddress:Ljava/lang/String;

    iput p3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$rssi:I

    iput p4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$state:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$deviceAddress:Ljava/lang/String;

    iget v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$rssi:I

    iget v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->val$state:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->deviceRssiStateChange(Ljava/lang/String;II)V

    .line 182
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadRssi:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iput-boolean v4, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadRssi:Z

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
