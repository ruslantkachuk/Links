.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;
.super Ljava/lang/Object;
.source "StandardViewFragmentForChat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editOutput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editOutput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 172
    .local v0, chars:[C
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    iget-object v3, v3, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v3, v3, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/redbear/RedBearService/RedBearService;->writeValue(Ljava/lang/String;[C)V

    .line 176
    .end local v0           #chars:[C
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
