.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->resultVIew:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->cancel(Z)Z

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    new-instance v1, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-direct {v1, v2}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    iput-object v1, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    .line 342
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    return-void
.end method
