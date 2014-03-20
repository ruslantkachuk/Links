.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$8;
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


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$8;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$8;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 659
    return-void
.end method
