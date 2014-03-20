.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->refreshList(Lcom/redbear/redbearbleclient/data/PinInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

.field private final synthetic val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x5

    .line 485
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    if-nez v2, :cond_2

    .line 486
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-virtual {v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    new-instance v3, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-virtual {v5}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v6, v6, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    invoke-direct {v3, v4, v5, v6}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;Landroid/content/Context;Landroid/util/SparseArray;)V

    iput-object v3, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;

    iget v4, v4, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 493
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_3

    .line 494
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins_list:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;

    iget v3, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-virtual {v2, v3, v1, v9}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 498
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    const/4 v2, -0x1

    .line 500
    const/4 v3, -0x2

    .line 498
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 501
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 502
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;

    iget v4, v4, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 505
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;->val$pin:Lcom/redbear/redbearbleclient/data/PinInfo;

    iget v3, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-virtual {v2, v3, v1, v9}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method
