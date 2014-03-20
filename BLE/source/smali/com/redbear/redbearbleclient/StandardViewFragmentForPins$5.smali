.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->protocolDidReceiveCustomData([II)V
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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 293
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    .line 294
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mLoading:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    :cond_0
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->changeValues:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 297
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 298
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 309
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->changeValues:Ljava/util/HashMap;

    .line 310
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-virtual {v5}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->updateData()V

    .line 311
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadPin:Z

    .line 313
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->listView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 314
    return-void

    .line 299
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 300
    .local v3, key:I
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 301
    .local v4, pInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v5, v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->changeValues:Ljava/util/HashMap;

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 304
    .local v0, changedPinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    if-eqz v0, :cond_3

    .line 305
    iget v5, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    iput v5, v4, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 306
    iget v5, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    iput v5, v4, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    .line 298
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
