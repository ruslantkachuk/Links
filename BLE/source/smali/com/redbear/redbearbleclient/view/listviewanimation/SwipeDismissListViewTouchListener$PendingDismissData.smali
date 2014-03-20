.class Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "view"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->this$0:Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    .line 231
    iput-object p3, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 232
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 236
    iget v0, p1, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-virtual {p0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;->compareTo(Lcom/redbear/redbearbleclient/view/listviewanimation/SwipeDismissListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
