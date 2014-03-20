.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;
.super Landroid/os/Handler;
.source "StandardViewFragmentForChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->readRssi(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method
