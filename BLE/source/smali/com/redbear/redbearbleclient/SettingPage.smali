.class public Lcom/redbear/redbearbleclient/SettingPage;
.super Landroid/app/Activity;
.source "SettingPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/SettingPage;->finish()V

    .line 70
    const v0, 0x7f040001

    .line 71
    const v1, 0x7f040006

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/redbear/redbearbleclient/SettingPage;->overridePendingTransition(II)V

    .line 72
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/SettingPage;->close()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, mLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 32
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 35
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f020009

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 38
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, textView:Landroid/widget/TextView;
    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    const/high16 v5, 0x41c8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    const-string v5, "BLE Controller v1.0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/redbear/redbearbleclient/SettingPage;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/SettingPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/SettingPage;->close()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
