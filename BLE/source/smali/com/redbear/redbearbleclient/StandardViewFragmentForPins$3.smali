.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->readRssi(Ljava/lang/String;)V

    .line 223
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
