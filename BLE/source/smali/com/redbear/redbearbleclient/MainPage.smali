.class public Lcom/redbear/redbearbleclient/MainPage;
.super Landroid/app/Activity;
.source "MainPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/MainPage$Device;,
        Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "MainPage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->finish()V

    .line 110
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->finish()V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/redbear/redbearbleclient/MainPage;->setContentView(I)V

    .line 57
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 58
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    new-instance v2, Landroid/content/Intent;

    .line 60
    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 59
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, enableBtIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/redbear/redbearbleclient/MainPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    .end local v2           #enableBtIntent:Landroid/content/Intent;
    :cond_0
    new-instance v3, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-direct {v3}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;-><init>()V

    .line 65
    .local v3, fragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 67
    const/high16 v5, 0x10b

    .line 68
    const v6, 0x10b0001

    .line 67
    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 69
    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 96
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/redbear/redbearbleclient/SettingPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, mSetting:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/redbear/redbearbleclient/MainPage;->startActivity(Landroid/content/Intent;)V

    .line 98
    const v1, 0x7f040002

    .line 99
    const v2, 0x7f040005

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/redbear/redbearbleclient/MainPage;->overridePendingTransition(II)V

    goto :goto_0

    .line 102
    .end local v0           #mSetting:Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/MainPage;->close()V

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f09001f -> :sswitch_0
    .end sparse-switch
.end method
