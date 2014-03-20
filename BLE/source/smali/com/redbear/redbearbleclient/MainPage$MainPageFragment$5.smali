.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->addDevice(Lcom/redbear/redbearbleclient/MainPage$Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$5;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->adapter:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_0
    return-void
.end method
