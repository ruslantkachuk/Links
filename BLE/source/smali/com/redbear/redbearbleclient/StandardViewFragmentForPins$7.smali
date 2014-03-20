.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->updateData()V
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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 445
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-virtual {v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v4, v4, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v3, v4}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;Landroid/content/Context;Landroid/util/SparseArray;)V

    iput-object v1, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    .line 447
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
