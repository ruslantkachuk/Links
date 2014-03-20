.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    check-cast p2, Lcom/redbear/RedBearService/RedBearService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/redbear/RedBearService/RedBearService$LocalBinder;->getService()Lcom/redbear/RedBearService/RedBearService;

    move-result-object v1

    iput-object v1, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 140
    const-string v0, "onServiceConnected"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mBearService : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    invoke-virtual {v0, v1}, Lcom/redbear/protocol/RBLProtocol;->setmIRedBearService(Lcom/redbear/RedBearService/RedBearService;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 148
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->setListener(Lcom/redbear/RedBearService/IRedBearServiceEventListener;)V

    .line 149
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textName:Landroid/widget/TextView;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1$1;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 131
    const-string v0, "onServiceConnected"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 134
    return-void
.end method
