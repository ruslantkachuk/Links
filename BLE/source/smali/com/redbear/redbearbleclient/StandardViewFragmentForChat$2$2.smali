.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;
.super Ljava/lang/Object;
.source "StandardViewFragmentForChat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->onDeviceConnectStateChange(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

.field private final synthetic val$deviceAddress:Ljava/lang/String;

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->val$deviceAddress:Ljava/lang/String;

    iput p3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->val$state:I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
    invoke-static {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->val$deviceAddress:Ljava/lang/String;

    iget v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$2;->val$state:I

    invoke-virtual {v0, v1, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->deviceConnectStateChange(Ljava/lang/String;I)V

    .line 108
    return-void
.end method
