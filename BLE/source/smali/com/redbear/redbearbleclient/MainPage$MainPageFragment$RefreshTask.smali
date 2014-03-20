.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;
.super Landroid/os/AsyncTask;
.source "MainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 267
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Lcom/redbear/RedBearService/RedBearService;->stopScanDevice()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->onRefreshComplete()V

    .line 281
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->addAllToList()V

    .line 282
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 255
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->clear()V

    .line 256
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Lcom/redbear/RedBearService/RedBearService;->stopScanDevice()V

    .line 259
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Lcom/redbear/RedBearService/RedBearService;->startScanDevice()V

    .line 262
    :cond_0
    return-void
.end method
