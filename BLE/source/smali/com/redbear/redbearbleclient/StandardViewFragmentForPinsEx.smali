.class public Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
.super Landroid/app/Fragment;
.source "StandardViewFragmentForPinsEx.java"

# interfaces
.implements Lcom/redbear/protocol/IRBLProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field changeValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/redbear/redbearbleclient/data/PinInfo;",
            ">;"
        }
    .end annotation
.end field

.field isFirstReadPin:Z

.field isFirstReadRssi:Z

.field list_pins_views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;

.field mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

.field mHandler:Landroid/os/Handler;

.field mHandlerCallback:Landroid/os/Handler$Callback;

.field final mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

.field mLoading:Landroid/widget/ProgressBar;

.field mProtocol:Lcom/redbear/protocol/RBLProtocol;

.field mRedBearService:Lcom/redbear/RedBearService/RedBearService;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field pins:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/redbear/redbearbleclient/data/PinInfo;",
            ">;"
        }
    .end annotation
.end field

.field pins_list:Landroid/widget/LinearLayout;

.field select_window:Landroid/widget/RelativeLayout;

.field textName:Landroid/widget/TextView;

.field textRssi:Landroid/widget/TextView;

.field final timeout:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    const-string v0, "StandardViewFragmentForPins"

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->TAG:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->timeout:J

    .line 59
    iput-boolean v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadRssi:Z

    .line 60
    iput-boolean v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadPin:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 165
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 221
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 244
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/redbear/redbearbleclient/MainPage$Device;)V
    .locals 3
    .parameter "mDevice"

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    const-string v0, "StandardViewFragmentForPins"

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->TAG:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->timeout:J

    .line 59
    iput-boolean v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadRssi:Z

    .line 60
    iput-boolean v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadPin:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 165
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 221
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 244
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->changeValues:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->list_pins_views:Ljava/util/HashMap;

    .line 77
    return-void
.end method


# virtual methods
.method protected createModeButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    .line 807
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 809
    .local v0, btn:Landroid/widget/Button;
    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 811
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 815
    return-object v0
.end method

.method protected deviceConnectStateChange(Ljava/lang/String;I)V
    .locals 4
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 257
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Connected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$4;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$4;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    .line 276
    const-wide/16 v2, 0x12c

    .line 262
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-nez p2, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Disconnected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected deviceRssiStateChange(Ljava/lang/String;II)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "rssi"
    .parameter "state"

    .prologue
    .line 248
    if-nez p3, :cond_0

    .line 249
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iput p2, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 251
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rssi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->disconnectDevice(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected getStateStr(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 819
    packed-switch p1, :pswitch_data_0

    .line 831
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 821
    :pswitch_0
    const-string v0, "INPUT"

    goto :goto_0

    .line 823
    :pswitch_1
    const-string v0, "OUTPUT"

    goto :goto_0

    .line 825
    :pswitch_2
    const-string v0, "ANALOG"

    goto :goto_0

    .line 827
    :pswitch_3
    const-string v0, "SERVO"

    goto :goto_0

    .line 829
    :pswitch_4
    const-string v0, "PWM"

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 82
    const v1, 0x7f030003

    .line 83
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textName:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins_list:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 89
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mLoading:Landroid/widget/ProgressBar;

    .line 90
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iput v3, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 95
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rssi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget v3, v3, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Lcom/redbear/protocol/RBLProtocol;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/redbear/protocol/RBLProtocol;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    .line 98
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v1, p0}, Lcom/redbear/protocol/RBLProtocol;->setIRBLProtocol(Lcom/redbear/protocol/IRBLProtocol;)V

    .line 101
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->disconnectDevice()V

    .line 108
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.redbear.RedBearService.RedBearService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 124
    const/4 v3, 0x1

    .line 123
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    return-void
.end method

.method public protocolDidReceiveCustomData([II)V
    .locals 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 292
    const-string v4, "StandardViewFragmentForPins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "protocolDidReceiveCustomData data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    const-string v6, ", length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    array-length v1, p1

    .line 297
    .local v1, count:I
    new-array v0, v1, [C

    .line 299
    .local v0, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 303
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 304
    .local v3, temp:Ljava/lang/String;
    const-string v4, "StandardViewFragmentForPins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "temp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v4, "ABC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$5;

    invoke-direct {v5, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$5;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    :cond_0
    return-void

    .line 300
    .end local v3           #temp:Ljava/lang/String;
    :cond_1
    aget v4, p1, v2

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public protocolDidReceivePinCapability(II)V
    .locals 10
    .parameter "pin"
    .parameter "value"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 376
    const-string v4, "StandardViewFragmentForPins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "protocolDidReceivePinCapability pin : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 377
    const-string v6, ", value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-nez p2, :cond_1

    .line 380
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - Nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 385
    new-instance v3, Lcom/redbear/redbearbleclient/data/PinInfo;

    invoke-direct {v3}, Lcom/redbear/redbearbleclient/data/PinInfo;-><init>()V

    .line 386
    .local v3, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p1, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    and-int/lit8 v4, p2, 0x1

    if-ne v4, v7, :cond_2

    .line 393
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - DIGITAL (I/O)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_2
    and-int/lit8 v4, p2, 0x2

    if-ne v4, v8, :cond_3

    .line 398
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - ANALOG"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_3
    and-int/lit8 v4, p2, 0x4

    if-ne v4, v9, :cond_4

    .line 403
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - PWM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_4
    and-int/lit8 v4, p2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 408
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - SERVO"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    .local v0, count:I
    new-array v4, v0, [I

    iput-object v4, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    .line 414
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_6

    .line 418
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 421
    invoke-virtual {p0, v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->refreshList(Lcom/redbear/redbearbleclient/data/PinInfo;)V

    goto :goto_0

    .line 415
    :cond_6
    iget-object v5, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public protocolDidReceivePinData(III)V
    .locals 9
    .parameter "pin"
    .parameter "mode"
    .parameter "value"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 442
    and-int/lit8 v2, p2, 0xf

    int-to-byte v0, v2

    .line 444
    .local v0, _mode:B
    const-string v2, "StandardViewFragmentForPins"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "protocolDidReceivePinData pin : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", _mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 445
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 477
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-boolean v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->isFirstReadPin:Z

    if-eqz v2, :cond_6

    .line 452
    new-instance v1, Lcom/redbear/redbearbleclient/data/PinInfo;

    invoke-direct {v1}, Lcom/redbear/redbearbleclient/data/PinInfo;-><init>()V

    .line 453
    .local v1, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p1, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 454
    iput v0, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 455
    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_3

    .line 456
    :cond_1
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    .line 463
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->changeValues:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_3
    if-ne v0, v6, :cond_4

    .line 458
    shr-int/lit8 v2, p2, 0x4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p3

    iput v2, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_1

    .line 459
    :cond_4
    if-ne v0, v7, :cond_5

    .line 460
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_1

    .line 461
    :cond_5
    if-ne v0, v8, :cond_2

    .line 462
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_1

    .line 465
    .end local v1           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_6
    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 466
    .restart local v1       #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput v0, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 467
    if-eqz v0, :cond_7

    if-ne v0, v5, :cond_9

    .line 468
    :cond_7
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    .line 475
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->refreshList(Lcom/redbear/redbearbleclient/data/PinInfo;)V

    goto :goto_0

    .line 469
    :cond_9
    if-ne v0, v6, :cond_a

    .line 470
    shr-int/lit8 v2, p2, 0x4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p3

    iput v2, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_2

    .line 471
    :cond_a
    if-ne v0, v7, :cond_b

    .line 472
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_2

    .line 473
    :cond_b
    if-ne v0, v8, :cond_8

    .line 474
    iput p3, v1, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    goto :goto_2
.end method

.method public protocolDidReceivePinMode(II)V
    .locals 4
    .parameter "pin"
    .parameter "mode"

    .prologue
    .line 428
    const-string v1, "StandardViewFragmentForPins"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocolDidReceivePinCapability pin : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->pins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 435
    .local v0, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p2, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 437
    invoke-virtual {p0, v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->refreshList(Lcom/redbear/redbearbleclient/data/PinInfo;)V

    goto :goto_0
.end method

.method public protocolDidReceiveProtocolVersion(III)V
    .locals 5
    .parameter "major"
    .parameter "minor"
    .parameter "bugfix"

    .prologue
    const/4 v4, 0x3

    .line 347
    const-string v1, "StandardViewFragmentForPins"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "major : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bugfix : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v1, :cond_0

    .line 350
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 351
    .local v0, data:[I
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v1, v0, v4}, Lcom/redbear/protocol/RBLProtocol;->sendCustomData([II)V

    .line 353
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    new-instance v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$6;

    invoke-direct {v2, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$6;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    .line 360
    const-wide/16 v3, 0x12c

    .line 354
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    .end local v0           #data:[I
    :cond_0
    return-void

    .line 350
    :array_0
    .array-data 0x4
        0x42t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public protocolDidReceiveTotalPinCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 368
    const-string v0, "StandardViewFragmentForPins"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protocolDidReceiveTotalPinCount count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Lcom/redbear/protocol/RBLProtocol;->queryPinAll()V

    .line 372
    :cond_0
    return-void
.end method

.method protected refreshList(Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 4
    .parameter "pin"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->textRssi:Landroid/widget/TextView;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;

    invoke-direct {v1, p0, p1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$7;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;Lcom/redbear/redbearbleclient/data/PinInfo;)V

    .line 509
    const-wide/16 v2, 0x32

    .line 481
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    :cond_0
    return-void
.end method

.method protected showModeSelect(Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 17
    .parameter "pinInfo"

    .prologue
    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, modes_area:Landroid/widget/LinearLayout;
    const v7, 0x123ff

    .line 715
    .local v7, modes_area_id:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_1

    .line 716
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    .line 717
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    const/high16 v11, 0x4f00

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$8;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6           #modes_area:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v6       #modes_area:Landroid/widget/LinearLayout;
    const v10, 0x123ff

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 730
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 731
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 733
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 734
    const/4 v10, -0x1

    .line 735
    const/4 v11, -0x2

    .line 733
    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 736
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    .line 737
    const/4 v11, -0x1

    .line 736
    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 741
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    .line 742
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    .line 743
    const/4 v14, -0x2

    .line 742
    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 740
    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 751
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 753
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v12, :cond_2

    .line 780
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-direct {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 781
    .local v1, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v10, 0x15e

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 782
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 783
    new-instance v10, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$10;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$10;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;)V

    invoke-virtual {v1, v10}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    .end local v1           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v6           #modes_area:Landroid/widget/LinearLayout;
    .end local v7           #modes_area_id:I
    :cond_0
    return-void

    .line 746
    .restart local v6       #modes_area:Landroid/widget/LinearLayout;
    .restart local v7       #modes_area_id:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->select_window:Landroid/widget/RelativeLayout;

    .line 747
    const v11, 0x123ff

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 746
    .end local v6           #modes_area:Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .restart local v6       #modes_area:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 753
    :cond_2
    aget v2, v11, v10

    .line 754
    .local v2, b:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getStateStr(I)Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, text:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 756
    move v4, v2

    .line 757
    .local v4, btn_mode:I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 758
    .local v5, btn_pin:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->createModeButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 759
    .local v3, btn:Landroid/widget/Button;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 760
    const/4 v13, -0x1

    .line 761
    const/4 v14, -0x2

    .line 759
    invoke-direct {v8, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 762
    .local v8, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 763
    new-instance v13, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$9;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v4}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$9;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;II)V

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    .end local v3           #btn:Landroid/widget/Button;
    .end local v4           #btn_mode:I
    .end local v5           #btn_pin:I
    .end local v8           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
