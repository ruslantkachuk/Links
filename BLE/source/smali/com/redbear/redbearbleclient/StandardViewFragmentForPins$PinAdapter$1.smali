.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "view"
    .parameter "value"

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 575
    .local v0, key:Ljava/lang/Byte;
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v1

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v1

    iget-object v2, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 578
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 577
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/redbear/protocol/RBLProtocol;->digitalWrite(II)V

    .line 583
    .end local v0           #key:Ljava/lang/Byte;
    :cond_0
    return-void

    .line 578
    .restart local v0       #key:Ljava/lang/Byte;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
