.class public Lcom/redbear/redbearbleclient/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Lcom/redbear/redbearbleclient/view/LogoView;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/view/LogoView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, mLogoView:Lcom/redbear/redbearbleclient/view/LogoView;
    invoke-virtual {p0, v0}, Lcom/redbear/redbearbleclient/SplashScreen;->setContentView(Landroid/view/View;)V

    .line 28
    new-instance v1, Lcom/redbear/redbearbleclient/SplashScreen$1;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/SplashScreen$1;-><init>(Lcom/redbear/redbearbleclient/SplashScreen;)V

    .line 39
    const-wide/16 v2, 0x1f4

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lcom/redbear/redbearbleclient/view/LogoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
