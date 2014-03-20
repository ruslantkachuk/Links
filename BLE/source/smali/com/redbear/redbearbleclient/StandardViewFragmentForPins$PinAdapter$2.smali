.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "view"
    .parameter "value"
    .parameter "isChangeByUser"

    .prologue
    .line 602
    if-eqz p3, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 604
    .local v0, key:Ljava/lang/Byte;
    if-eqz v0, :cond_0

    .line 605
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 607
    .local v1, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iget v2, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 608
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 609
    int-to-byte v4, p2

    .line 608
    invoke-virtual {v2, v3, v4}, Lcom/redbear/protocol/RBLProtocol;->analogWrite(II)V

    .line 618
    .end local v0           #key:Ljava/lang/Byte;
    .end local v1           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_0
    :goto_0
    return-void

    .line 611
    .restart local v0       #key:Ljava/lang/Byte;
    .restart local v1       #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_1
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 612
    int-to-byte v4, p2

    .line 611
    invoke-virtual {v2, v3, v4}, Lcom/redbear/protocol/RBLProtocol;->servoWrite(II)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 596
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 591
    return-void
.end method
