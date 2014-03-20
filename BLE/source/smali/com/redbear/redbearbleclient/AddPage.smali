.class public Lcom/redbear/redbearbleclient/AddPage;
.super Landroid/app/Activity;
.source "AddPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/AddPage;->finish()V

    .line 50
    const v0, 0x7f040001

    .line 51
    const v1, 0x7f040006

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/redbear/redbearbleclient/AddPage;->overridePendingTransition(II)V

    .line 52
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/AddPage;->close()V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v1, textView:Landroid/widget/TextView;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    const/high16 v2, 0x41c8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 31
    const-string v2, "That is a AddPage page"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/redbear/redbearbleclient/AddPage;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/AddPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/AddPage;->close()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
