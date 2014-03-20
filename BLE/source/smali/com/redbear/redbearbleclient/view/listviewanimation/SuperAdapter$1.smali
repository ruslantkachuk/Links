.class Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;
.super Ljava/lang/Object;
.source "SuperAdapter.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->animateDismiss(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;

.field private final synthetic val$positionsCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;->val$positionsCopy:Ljava/util/List;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter$1;->val$positionsCopy:Ljava/util/List;

    #calls: Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->invokeCallback(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;->access$0(Lcom/redbear/redbearbleclient/view/listviewanimation/SuperAdapter;Ljava/util/Collection;)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 108
    return-void
.end method
