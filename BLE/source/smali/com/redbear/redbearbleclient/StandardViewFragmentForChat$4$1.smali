.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForChat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;)Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;)Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    move-result-object v1

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/redbear/RedBearService/RedBearService;->connectDevice(Ljava/lang/String;Z)V

    .line 258
    return-void
.end method
