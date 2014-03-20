.class public Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
.super Landroid/app/Fragment;
.source "MainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainPageFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;,
        Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;
    }
.end annotation


# instance fields
.field adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

.field conn:Landroid/content/ServiceConnection;

.field listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

.field loading:Landroid/view/View;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbear/redbearbleclient/MainPage$Device;",
            ">;"
        }
    .end annotation
.end field

.field mBearService:Lcom/redbear/RedBearService/RedBearService;

.field mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

.field resultVIew:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->conn:Landroid/content/ServiceConnection;

    .line 180
    new-instance v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$2;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 228
    new-instance v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->refreshTask:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$RefreshTask;

    .line 132
    return-void
.end method


# virtual methods
.method addAllToList()V
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    .line 384
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    invoke-virtual {v0, v1}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->resultVIew:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->resultVIew:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method addDevice(Lcom/redbear/redbearbleclient/MainPage$Device;)V
    .locals 4
    .parameter "mDevice"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 352
    .local v0, mTemp:Lcom/redbear/redbearbleclient/MainPage$Device;
    iget-object v2, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget v1, p1, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    iput v1, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 354
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;

    invoke-direct {v2, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 321
    const v1, 0x7f030004

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    .line 323
    iput-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    .line 326
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    invoke-virtual {v1, v2}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 330
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->loading:Landroid/view/View;

    .line 332
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->resultVIew:Landroid/view/View;

    .line 334
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->listView:Lcom/redbear/redbearbleclient/view/PullRefreshListView;

    new-instance v2, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;

    invoke-direct {v2, p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$4;-><init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/redbear/redbearbleclient/view/PullRefreshListView;->setonRefreshListener(Lcom/redbear/redbearbleclient/view/PullRefreshListView$OnRefreshListener;)V

    .line 346
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 313
    return-void

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    .line 288
    const-string v1, "com.redbear.RedBearService.RedBearService"

    .line 287
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 291
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    invoke-virtual {v1, v2}, Lcom/redbear/RedBearService/RedBearService;->setListener(Lcom/redbear/RedBearService/IRedBearServiceEventListener;)V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 296
    return-void
.end method
