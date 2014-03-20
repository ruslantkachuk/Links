.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->showModeSelect(Lcom/redbear/redbearbleclient/data/PinInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

.field private final synthetic val$btn_mode:I

.field private final synthetic val$btn_pin:I


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iput p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->val$btn_pin:I

    iput p3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->val$btn_mode:I

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    iget v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->val$btn_pin:I

    iget v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->val$btn_mode:I

    invoke-virtual {v0, v1, v2}, Lcom/redbear/protocol/RBLProtocol;->setPinMode(II)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 707
    return-void
.end method
