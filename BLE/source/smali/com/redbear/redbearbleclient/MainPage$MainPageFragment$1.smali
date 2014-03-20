.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    check-cast p2, Lcom/redbear/RedBearService/RedBearService$LocalBinder;

    .line 146
    .end local p2
    invoke-virtual {p2}, Lcom/redbear/RedBearService/RedBearService$LocalBinder;->getService()Lcom/redbear/RedBearService/RedBearService;

    move-result-object v1

    .line 145
    iput-object v1, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 147
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->loading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->clear()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->setListener(Lcom/redbear/RedBearService/IRedBearServiceEventListener;)V

    .line 156
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Lcom/redbear/RedBearService/RedBearService;->startScanDevice()V

    .line 158
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    new-instance v1, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)V

    .line 173
    const-wide/16 v2, 0x7d0

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 141
    return-void
.end method
