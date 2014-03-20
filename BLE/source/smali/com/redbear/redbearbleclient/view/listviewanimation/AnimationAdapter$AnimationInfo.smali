.class Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationInfo"
.end annotation


# instance fields
.field public animator:Lcom/nineoldandroids/animation/Animator;

.field public position:I

.field final synthetic this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;ILcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "animator"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;->position:I

    .line 213
    iput-object p3, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/AnimationAdapter$AnimationInfo;->animator:Lcom/nineoldandroids/animation/Animator;

    .line 214
    return-void
.end method
