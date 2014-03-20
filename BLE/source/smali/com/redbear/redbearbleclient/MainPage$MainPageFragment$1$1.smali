.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    #getter for: Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    #getter for: Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    #getter for: Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0}, Lcom/redbear/RedBearService/RedBearService;->stopScanDevice()V

    .line 167
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    #getter for: Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->addAllToList()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1$1;->this$2:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;

    #getter for: Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;->access$0(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$1;)Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->addAllToList()V

    .line 172
    return-void
.end method
