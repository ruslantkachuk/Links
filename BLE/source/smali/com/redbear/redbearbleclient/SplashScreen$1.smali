.class Lcom/redbear/redbearbleclient/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbear/redbearbleclient/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/redbearbleclient/SplashScreen;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/SplashScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/SplashScreen$1;->this$0:Lcom/redbear/redbearbleclient/SplashScreen;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/SplashScreen$1;->this$0:Lcom/redbear/redbearbleclient/SplashScreen;

    const-class v2, Lcom/redbear/redbearbleclient/MainPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbear/redbearbleclient/SplashScreen$1;->this$0:Lcom/redbear/redbearbleclient/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/redbear/redbearbleclient/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 35
    iget-object v1, p0, Lcom/redbear/redbearbleclient/SplashScreen$1;->this$0:Lcom/redbear/redbearbleclient/SplashScreen;

    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/redbear/redbearbleclient/SplashScreen;->overridePendingTransition(II)V

    .line 36
    iget-object v1, p0, Lcom/redbear/redbearbleclient/SplashScreen$1;->this$0:Lcom/redbear/redbearbleclient/SplashScreen;

    invoke-virtual {v1}, Lcom/redbear/redbearbleclient/SplashScreen;->finish()V

    .line 37
    return-void
.end method
