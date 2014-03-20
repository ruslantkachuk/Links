.class Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    .line 254
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 257
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$1(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v4, v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$2(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;I)V

    .line 258
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$1(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)I

    move-result v4

    if-nez v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 263
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 264
    .local v0, dismissPositions:[I
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 267
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mCallback:Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$4(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/AbsListView;
    invoke-static {v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$5(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;->onDismiss(Landroid/widget/AbsListView;[I)V

    .line 270
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 279
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 281
    .end local v0           #dismissPositions:[I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 265
    .restart local v0       #dismissPositions:[I
    .restart local v1       #i:I
    :cond_1
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$2;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    #getter for: Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;->access$3(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;

    iget v4, v4, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    aput v4, v0, v1

    .line 264
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;

    .line 272
    .local v3, pendingDismiss:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;
    iget-object v5, v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 273
    iget-object v5, v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 274
    iget-object v5, v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 275
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x0

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    iget-object v5, v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
