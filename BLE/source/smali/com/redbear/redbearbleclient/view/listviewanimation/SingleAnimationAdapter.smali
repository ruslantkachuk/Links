.class public abstract Lcom/redbear/redbearbleclient/view/listviewanimation/SingleAnimationAdapter;
.super Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;
.source "SingleAnimationAdapter.java"


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "baseAdapter"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract getAnimator(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;
.end method

.method public getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;
    .locals 3
    .parameter "parent"
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/redbear/redbearbleclient/view/listviewanimation/SingleAnimationAdapter;->getAnimator(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    .line 37
    .local v0, animator:Lcom/nineoldandroids/animation/Animator;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method
