.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->deviceConnectStateChange(Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Lcom/redbear/protocol/RBLProtocol;->queryProtocolVersion()V

    .line 252
    :cond_0
    return-void
.end method
