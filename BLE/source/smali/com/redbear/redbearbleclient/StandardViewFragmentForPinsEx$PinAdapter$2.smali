.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 692
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 694
    .local v1, key:I
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    iget-object v3, v3, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 695
    .local v2, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->showModeSelect(Lcom/redbear/redbearbleclient/data/PinInfo;)V

    .line 697
    .end local v1           #key:I
    .end local v2           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_0
    return-void
.end method
