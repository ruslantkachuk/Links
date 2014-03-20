.class public abstract Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;
.super Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;
    }
.end annotation


# static fields
.field protected static final DEFAULTANIMATIONDELAYMILLIS:J = 0x64L

.field protected static final DEFAULTANIMATIONDURATIONMILLIS:J = 0x12cL

.field private static final INITIALDELAYMILLIS:J = 0x96L


# instance fields
.field private mAnimationStartMillis:J

.field private mAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasParentAnimationAdapter:Z

.field private mLastAnimatedPosition:I


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "baseAdapter"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;-><init>(Landroid/widget/BaseAdapter;)V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimationStartMillis:J

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    .line 51
    instance-of v0, p1, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->setHasParentAnimationAdapter(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method private animateView(ILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8
    .parameter "position"
    .parameter "parent"
    .parameter "view"

    .prologue
    .line 110
    iget-wide v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimationStartMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimationStartMillis:J

    .line 114
    :cond_0
    invoke-direct {p0, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->hideView(Landroid/view/View;)V

    .line 117
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v4, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    invoke-virtual {v4, p2, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v2

    .line 122
    .local v2, childAnimators:[Lcom/nineoldandroids/animation/Animator;
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v1

    .line 123
    .local v1, animators:[Lcom/nineoldandroids/animation/Animator;
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {p3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    .local v0, alphaAnimator:Lcom/nineoldandroids/animation/Animator;
    new-instance v3, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 126
    .local v3, set:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-direct {p0, v2, v1, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->concatAnimators([Lcom/nineoldandroids/animation/Animator;[Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/animation/Animator;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 127
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->calculateAnimationDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 128
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimationDurationMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 129
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 131
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    new-instance v6, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;

    invoke-direct {v6, p0, p1, v3}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;-><init>(Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;ILcom/nineoldandroids/animation/Animator;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    return-void

    .line 120
    .end local v0           #alphaAnimator:Lcom/nineoldandroids/animation/Animator;
    .end local v1           #animators:[Lcom/nineoldandroids/animation/Animator;
    .end local v2           #childAnimators:[Lcom/nineoldandroids/animation/Animator;
    .end local v3           #set:Lcom/nineoldandroids/animation/AnimatorSet;
    :cond_1
    const/4 v4, 0x0

    new-array v2, v4, [Lcom/nineoldandroids/animation/Animator;

    .restart local v2       #childAnimators:[Lcom/nineoldandroids/animation/Animator;
    goto :goto_0

    .line 123
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 103
    iget v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mHasParentAnimationAdapter:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, p1, p3, p2}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->animateView(ILandroid/view/ViewGroup;Landroid/view/View;)V

    .line 105
    iput p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    .line 107
    :cond_0
    return-void
.end method

.method private calculateAnimationDelay()J
    .locals 10

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 163
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    .line 162
    sub-int v4, v5, v6

    .line 164
    .local v4, numberOfItems:I
    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    if-ge v5, v6, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v0

    .line 167
    .local v0, delay:J
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/GridView;

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v6

    iget v5, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getNumColumns()I

    move-result v5

    rem-int v5, v8, v5

    int-to-long v8, v5

    mul-long v5, v6, v8

    add-long/2addr v0, v5

    .line 175
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    return-wide v5

    .line 171
    .end local v0           #delay:J
    :cond_1
    iget v5, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v7

    mul-long v2, v5, v7

    .line 172
    .local v2, delaySinceStart:J
    iget-wide v5, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimationStartMillis:J

    const-wide/16 v7, 0x96

    add-long/2addr v5, v7

    add-long/2addr v5, v2

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 172
    sub-long v0, v5, v7

    .restart local v0       #delay:J
    goto :goto_0
.end method

.method private concatAnimators([Lcom/nineoldandroids/animation/Animator;[Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/animation/Animator;)[Lcom/nineoldandroids/animation/Animator;
    .locals 5
    .parameter "childAnimators"
    .parameter "animators"
    .parameter "alphaAnimator"

    .prologue
    .line 144
    array-length v3, p1

    array-length v4, p2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lcom/nineoldandroids/animation/Animator;

    .line 147
    .local v0, allAnimators:[Lcom/nineoldandroids/animation/Animator;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_0

    .line 151
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 156
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object p3, v0, v3

    .line 157
    return-object v0

    .line 148
    .end local v2           #j:I
    :cond_0
    aget-object v3, p2, v1

    aput-object v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .restart local v2       #j:I
    :cond_1
    aget-object v3, p1, v2

    aput-object v3, v0, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private hideView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 135
    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 136
    .local v0, animator:Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 137
    .local v1, set:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 138
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 139
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 140
    return-void
.end method


# virtual methods
.method protected abstract getAnimationDelayMillis()J
.end method

.method protected abstract getAnimationDurationMillis()J
.end method

.method public abstract getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, alreadyStarted:Z
    iget-boolean v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mHasParentAnimationAdapter:Z

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 77
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call setListView() on this AnimationAdapter before setAdapter()!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 82
    .local v2, hashCode:I
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;

    .line 83
    .local v1, animationInfo:Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;
    if-eqz v1, :cond_1

    .line 84
    iget v4, v1, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;->position:I

    if-eq v4, p1, :cond_3

    .line 85
    iget-object v4, v1, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;->animator:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Animator;->end()V

    .line 86
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    .end local v1           #animationInfo:Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;
    .end local v2           #hashCode:I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, itemView:Landroid/view/View;
    iget-boolean v4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mHasParentAnimationAdapter:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 97
    invoke-direct {p0, p1, v3, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 99
    :cond_2
    return-object v3

    .line 88
    .end local v3           #itemView:Landroid/view/View;
    .restart local v1       #animationInfo:Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;
    .restart local v2       #hashCode:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mLastAnimatedPosition:I

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mAnimationStartMillis:J

    .line 66
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->reset()V

    .line 69
    :cond_0
    return-void
.end method

.method public setHasParentAnimationAdapter(Z)V
    .locals 0
    .parameter "hasParentAnimationAdapter"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;->mHasParentAnimationAdapter:Z

    .line 186
    return-void
.end method
