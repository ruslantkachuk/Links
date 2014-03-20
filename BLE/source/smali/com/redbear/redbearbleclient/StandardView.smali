.class public Lcom/redbear/redbearbleclient/StandardView;
.super Landroid/app/Activity;
.source "StandardView.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

.field mDummySectionFragment:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardView;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 20
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardView;->mDummySectionFragment:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardView;->mDummySectionFragment:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-virtual {v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->disconnectDevice()V

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 72
    const v0, 0x7f040001

    .line 73
    const v1, 0x7f040006

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/redbear/redbearbleclient/StandardView;->overridePendingTransition(II)V

    .line 74
    return-void
.end method

.method protected getDataFromIntent()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, mIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "Device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/MainPage$Device;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardView;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 63
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->getDataFromIntent()V

    .line 31
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/redbear/redbearbleclient/StandardView;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardView;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    invoke-direct {v1, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;-><init>(Lcom/redbear/redbearbleclient/MainPage$Device;)V

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardView;->mDummySectionFragment:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    .line 49
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 50
    const/high16 v2, 0x10b

    const v3, 0x10b0001

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 51
    const/high16 v2, 0x7f09

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardView;->mDummySectionFragment:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 104
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 101
    :sswitch_1
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardView;->finish()V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090020 -> :sswitch_1
    .end sparse-switch
.end method
