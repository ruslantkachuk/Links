.class public Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;
.super Lcom/redbear/redbearbleclient/view/listviewanimation/SingleAnimationAdapter;
.source "SuperAdapter.java"


# static fields
.field protected static final DEFAULTANIMATIONDELAYMILLIS:J = 0x64L

.field protected static final DEFAULTANIMATIONDURATIONMILLIS:J = 0x12cL


# instance fields
.field isSlideToRemove:Z

.field private final mAnimationDelayMillis:J

.field private final mAnimationDurationMillis:J

.field private mCallback:Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 6
    .parameter "baseAdapter"

    .prologue
    .line 51
    const-wide/16 v2, 0x64

    .line 52
    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;J)V
    .locals 6
    .parameter "baseAdapter"
    .parameter "animationDelayMillis"

    .prologue
    .line 56
    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;JJ)V
    .locals 1
    .parameter "baseAdapter"
    .parameter "animationDelayMillis"
    .parameter "animationDurationMillis"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SingleAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->isSlideToRemove:Z

    .line 62
    iput-wide p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mAnimationDelayMillis:J

    .line 63
    iput-wide p4, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mAnimationDurationMillis:J

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;)V
    .locals 6
    .parameter "baseAdapter"
    .parameter "callback"

    .prologue
    .line 45
    const-wide/16 v2, 0x64

    .line 46
    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 47
    iput-object p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mCallback:Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->invokeCallback(Ljava/util/Collection;)V

    return-void
.end method

.method private createAnimatorForView(Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 149
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 151
    .local v2, originalHeight:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 152
    .local v0, animator:Lcom/nineoldandroids/animation/ValueAnimator;
    new-instance v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$2;-><init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 169
    new-instance v3, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;-><init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    return-object v0
.end method

.method private getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, positions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 144
    return-object v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private invokeCallback(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, positions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v2, positionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 130
    .local v0, dismissPositions:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mCallback:Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;->onDismiss(Landroid/widget/AbsListView;[I)V

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animateDismiss(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->animateDismiss(Ljava/util/Collection;)V

    .line 81
    return-void
.end method

.method public animateDismiss(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, positions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v4, positionsCopy:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v7

    if-nez v7, :cond_0

    .line 86
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Call setListView() on this AnimateDismissAdapter before calling setAdapter()!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :cond_0
    invoke-direct {p0, v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 90
    .local v6, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "positionsCopy: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, animators:Ljava/util/List;,"Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 97
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 99
    .local v0, animatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Lcom/nineoldandroids/animation/Animator;

    .line 100
    .local v2, animatorsArray:[Lcom/nineoldandroids/animation/Animator;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v2

    if-lt v3, v7, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 105
    new-instance v7, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;

    invoke-direct {v7, p0, v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;-><init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 120
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 124
    .end local v0           #animatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
    .end local v1           #animators:Ljava/util/List;,"Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v2           #animatorsArray:[Lcom/nineoldandroids/animation/Animator;
    .end local v3           #i:I
    :goto_2
    return-void

    .line 93
    .restart local v1       #animators:Ljava/util/List;,"Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 94
    .local v5, view:Landroid/view/View;
    invoke-direct {p0, v5}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->createAnimatorForView(Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v5           #view:Landroid/view/View;
    .restart local v0       #animatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
    .restart local v2       #animatorsArray:[Lcom/nineoldandroids/animation/Animator;
    .restart local v3       #i:I
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/Animator;

    aput-object v7, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v0           #animatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
    .end local v1           #animators:Ljava/util/List;,"Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v2           #animatorsArray:[Lcom/nineoldandroids/animation/Animator;
    .end local v3           #i:I
    :cond_3
    invoke-direct {p0, v4}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->invokeCallback(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method protected getAnimationDelayMillis()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mAnimationDelayMillis:J

    return-wide v0
.end method

.method protected getAnimationDurationMillis()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mAnimationDurationMillis:J

    return-wide v0
.end method

.method protected getAnimator(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;
    .locals 4
    .parameter "parent"
    .parameter "view"

    .prologue
    .line 76
    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public isSlideToRemove()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->isSlideToRemove:Z

    return v0
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SingleAnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 183
    iget-boolean v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->isSlideToRemove:Z

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->mCallback:Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;

    invoke-direct {v0, p1, v1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/AbsListView;Lcom/redbear/redbearbleclient/view/listviewanimation/OnDismissCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setSlideToRemove(Z)V
    .locals 0
    .parameter "isSlideToRemove"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->isSlideToRemove:Z

    .line 195
    return-void
.end method
