.class public Lcom/redbear/redbearbleclient/view/PullRefreshListView;
.super Landroid/widget/ListView;
.source "PullRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "listview"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private firstItemIndex:I

.field private headContentHeight:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 5

    .prologue
    const v4, 0x7f06000e

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 248
    iget v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 266
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-boolean v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isBack:Z

    .line 270
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 271
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 283
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 285
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 295
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/high16 v4, 0x3f00

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f050001

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setCacheColorHint(I)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 79
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 82
    const v5, 0x7f090016

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 84
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 85
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 86
    const v5, 0x7f090017

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 85
    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    .line 87
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f090018

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->tipsTextview:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 89
    const v5, 0x7f090019

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->measureView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    .line 94
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 95
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 97
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 100
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 102
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 100
    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 103
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 104
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 105
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 107
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 109
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 107
    iput-object v5, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 110
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 112
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 115
    iput-boolean v12, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRefreshable:Z

    .line 116
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 326
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 327
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 328
    const/4 v5, -0x2

    .line 327
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 330
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 331
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 335
    const/high16 v4, 0x4000

    .line 334
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 340
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 341
    return-void

    .line 337
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->refreshListener:Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->refreshListener:Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;->onRefresh()V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x3

    iput v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 314
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 315
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "firstVisiableItem"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 120
    iput p2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->firstItemIndex:I

    .line 121
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    iget-boolean v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 131
    :pswitch_0
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->firstItemIndex:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 132
    iput-boolean v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    goto :goto_0

    .line 139
    :pswitch_1
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-eq v1, v7, :cond_2

    .line 143
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-ne v1, v3, :cond_1

    .line 144
    iput v5, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 145
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 148
    :cond_1
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-nez v1, :cond_2

    .line 149
    iput v6, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 150
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 151
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->onRefresh()V

    .line 156
    :cond_2
    iput-boolean v4, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    .line 157
    iput-boolean v4, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isBack:Z

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 164
    .local v0, tempY:I
    iget-boolean v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->firstItemIndex:I

    if-nez v1, :cond_3

    .line 165
    const-string v1, "listview"

    const-string v2, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    .line 167
    iput v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    .line 170
    :cond_3
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-eq v1, v7, :cond_0

    .line 175
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-nez v1, :cond_4

    .line 177
    invoke-virtual {p0, v4}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setSelection(I)V

    .line 180
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    if-ge v1, v2, :cond_8

    .line 181
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 182
    iput v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 183
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 198
    :cond_4
    :goto_1
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-ne v1, v3, :cond_5

    .line 200
    invoke-virtual {p0, v4}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setSelection(I)V

    .line 203
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    if-lt v1, v2, :cond_9

    .line 204
    iput v4, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 205
    iput-boolean v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isBack:Z

    .line 206
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 218
    :cond_5
    :goto_2
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-ne v1, v5, :cond_6

    .line 219
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    .line 220
    iput v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 221
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    .line 225
    :cond_6
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-ne v1, v3, :cond_7

    .line 226
    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    .line 227
    iget v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 226
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    :cond_7
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    .line 233
    iget v3, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->headContentHeight:I

    sub-int/2addr v2, v3

    .line 232
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 187
    :cond_8
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    .line 188
    iput v5, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 189
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    goto :goto_1

    .line 210
    :cond_9
    iget v1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    .line 212
    iput v5, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->state:I

    .line 213
    invoke-direct {p0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    return-void
.end method

.method public setonRefreshListener(Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;)V
    .locals 1
    .parameter "refreshListener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->refreshListener:Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->isRefreshable:Z

    .line 306
    return-void
.end method
