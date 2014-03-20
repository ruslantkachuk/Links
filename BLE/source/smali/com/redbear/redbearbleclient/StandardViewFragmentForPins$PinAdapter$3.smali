.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 625
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 626
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 628
    .local v1, key:I
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    iget-object v3, v3, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 629
    .local v2, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    invoke-static {v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->showModeSelect(Lcom/redbear/redbearbleclient/data/PinInfo;)V

    .line 631
    .end local v1           #key:I
    .end local v2           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_0
    return-void
.end method
