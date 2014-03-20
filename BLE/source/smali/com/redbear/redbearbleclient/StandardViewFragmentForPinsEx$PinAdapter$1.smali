.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "view"
    .parameter "value"

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 637
    .local v0, key:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 638
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v1

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v1

    iget-object v2, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 640
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 639
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/redbear/protocol/RBLProtocol;->digitalWrite(II)V

    .line 645
    .end local v0           #key:Ljava/lang/Integer;
    :cond_0
    return-void

    .line 640
    .restart local v0       #key:Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
