.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarChange"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

.field value:I


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 655
    const-string v0, "StandardViewFragmentForPins"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-eqz p3, :cond_0

    .line 658
    iput p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->value:I

    .line 660
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 665
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 671
    .local v0, key:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 672
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v2, :cond_0

    .line 673
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 674
    .local v1, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iget v2, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 675
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->value:I

    invoke-virtual {v2, v3, v4}, Lcom/redbear/protocol/RBLProtocol;->analogWrite(II)V

    .line 682
    .end local v1           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_0
    :goto_0
    return-void

    .line 677
    .restart local v1       #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_1
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v2

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;->value:I

    invoke-virtual {v2, v3, v4}, Lcom/redbear/protocol/RBLProtocol;->servoWrite(II)V

    goto :goto_0
.end method
