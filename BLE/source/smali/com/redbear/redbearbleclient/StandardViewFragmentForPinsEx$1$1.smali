.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1$1;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v0

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1$1;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    invoke-static {v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    move-result-object v1

    iget-object v1, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    .line 157
    const/4 v2, 0x0

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/redbear/RedBearService/RedBearService;->connectDevice(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method
