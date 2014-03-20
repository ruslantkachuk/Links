.class Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;
.super Ljava/lang/Object;
.source "SuperAdapter.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->createAnimatorForView(Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;

.field private final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->val$view:Landroid/view/View;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .parameter "valueAnimator"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-void
.end method
