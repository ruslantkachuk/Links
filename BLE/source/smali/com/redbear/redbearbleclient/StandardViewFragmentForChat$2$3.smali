.class Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;
.super Ljava/lang/Object;
.source "StandardViewFragmentForChat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->onDeviceReadValue([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

.field private final synthetic val$value:[I


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;->val$value:[I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;->val$value:[I

    array-length v1, v4

    .line 122
    .local v1, count:I
    new-array v0, v1, [C

    .line 124
    .local v0, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 128
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 130
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    #getter for: Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
    invoke-static {v4}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;->access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;)Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;

    move-result-object v4

    iget-object v4, v4, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editInput:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .line 125
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2$3;->val$value:[I

    aget v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
