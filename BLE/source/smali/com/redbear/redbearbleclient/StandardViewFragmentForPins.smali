.class public Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
.super Landroid/app/Fragment;
.source "StandardViewFragmentForPins.java"

# interfaces
.implements Lcom/redbear/protocol/IRBLProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;
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

.field listView:Landroid/widget/ListView;

.field mAdapter:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

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

.field select_window:Landroid/widget/RelativeLayout;

.field textName:Landroid/widget/TextView;

.field textRssi:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    const-string v0, "StandardViewFragmentForPins"

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadRssi:Z

    .line 60
    iput-boolean v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadPin:Z

    .line 126
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 162
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 214
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/redbear/redbearbleclient/MainPage$Device;)V
    .locals 2
    .parameter "mDevice"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    const-string v0, "StandardViewFragmentForPins"

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadRssi:Z

    .line 60
    iput-boolean v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadPin:Z

    .line 126
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 162
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mIRedBearServiceEventListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 214
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->changeValues:Ljava/util/HashMap;

    .line 75
    return-void
.end method


# virtual methods
.method protected createModeButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    .line 739
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 741
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 745
    return-object v0
.end method

.method protected deviceConnectStateChange(Ljava/lang/String;I)V
    .locals 4
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Connected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$4;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    .line 253
    const-wide/16 v2, 0x12c

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Disconnected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

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
    .line 231
    if-nez p3, :cond_0

    .line 232
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iput p2, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 234
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rssi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->disconnectDevice(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected getStateStr(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 749
    packed-switch p1, :pswitch_data_0

    .line 761
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 751
    :pswitch_0
    const-string v0, "INPUT"

    goto :goto_0

    .line 753
    :pswitch_1
    const-string v0, "OUTPUT"

    goto :goto_0

    .line 755
    :pswitch_2
    const-string v0, "ANALOG"

    goto :goto_0

    .line 757
    :pswitch_3
    const-string v0, "SERVO"

    goto :goto_0

    .line 759
    :pswitch_4
    const-string v0, "PWM"

    goto :goto_0

    .line 749
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

    .line 80
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textName:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->listView:Landroid/widget/ListView;

    .line 85
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 86
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mLoading:Landroid/widget/ProgressBar;

    .line 87
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iput v3, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 92
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rssi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget v3, v3, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lcom/redbear/protocol/RBLProtocol;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/redbear/protocol/RBLProtocol;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    .line 95
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v1, p0}, Lcom/redbear/protocol/RBLProtocol;->setIRBLProtocol(Lcom/redbear/protocol/IRBLProtocol;)V

    .line 98
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->disconnectDevice()V

    .line 105
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.redbear.RedBearService.RedBearService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 121
    const/4 v3, 0x1

    .line 120
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 124
    return-void
.end method

.method public protocolDidReceiveCustomData([II)V
    .locals 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 269
    const-string v4, "StandardViewFragmentForPins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "protocolDidReceiveCustomData data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    const-string v6, ", length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    array-length v1, p1

    .line 274
    .local v1, count:I
    new-array v0, v1, [C

    .line 276
    .local v0, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 280
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 281
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

    .line 282
    const-string v4, "ABC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;

    invoke-direct {v5, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$5;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    :cond_0
    return-void

    .line 277
    .end local v3           #temp:Ljava/lang/String;
    :cond_1
    aget v4, p1, v2

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 276
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

    .line 352
    const-string v4, "StandardViewFragmentForPins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "protocolDidReceivePinCapability pin : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 353
    const-string v6, ", value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-nez p2, :cond_1

    .line 356
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - Nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 361
    new-instance v3, Lcom/redbear/redbearbleclient/data/PinInfo;

    invoke-direct {v3}, Lcom/redbear/redbearbleclient/data/PinInfo;-><init>()V

    .line 362
    .local v3, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p1, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    and-int/lit8 v4, p2, 0x1

    if-ne v4, v7, :cond_2

    .line 369
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - DIGITAL (I/O)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    and-int/lit8 v4, p2, 0x2

    if-ne v4, v8, :cond_3

    .line 374
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - ANALOG"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    and-int/lit8 v4, p2, 0x4

    if-ne v4, v9, :cond_4

    .line 379
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - PWM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_4
    and-int/lit8 v4, p2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 384
    const-string v4, "StandardViewFragmentForPins"

    const-string v5, " - SERVO"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 389
    .local v0, count:I
    new-array v4, v0, [I

    iput-object v4, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    .line 390
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_6

    .line 394
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 397
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->updateData()V

    goto :goto_0

    .line 391
    :cond_6
    iget-object v5, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public protocolDidReceivePinData(III)V
    .locals 4
    .parameter "pin"
    .parameter "mode"
    .parameter "value"

    .prologue
    .line 418
    const-string v1, "StandardViewFragmentForPins"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocolDidReceivePinData pin : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 419
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-boolean v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->isFirstReadPin:Z

    if-eqz v1, :cond_1

    .line 426
    new-instance v0, Lcom/redbear/redbearbleclient/data/PinInfo;

    invoke-direct {v0}, Lcom/redbear/redbearbleclient/data/PinInfo;-><init>()V

    .line 427
    .local v0, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p1, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 428
    iput p2, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 429
    iput p3, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    .line 430
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->changeValues:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 432
    .end local v0           #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    :cond_1
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 433
    .restart local v0       #pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p2, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 434
    iput p3, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    .line 435
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->updateData()V

    goto :goto_0
.end method

.method public protocolDidReceivePinMode(II)V
    .locals 4
    .parameter "pin"
    .parameter "mode"

    .prologue
    .line 404
    const-string v1, "StandardViewFragmentForPins"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocolDidReceivePinCapability pin : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->pins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 411
    .local v0, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    iput p2, v0, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    .line 413
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->updateData()V

    goto :goto_0
.end method

.method public protocolDidReceiveProtocolVersion(III)V
    .locals 5
    .parameter "major"
    .parameter "minor"
    .parameter "bugfix"

    .prologue
    const/4 v4, 0x3

    .line 323
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

    .line 324
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v1, :cond_0

    .line 326
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 327
    .local v0, data:[I
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v1, v0, v4}, Lcom/redbear/protocol/RBLProtocol;->sendCustomData([II)V

    .line 329
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    new-instance v2, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$6;

    invoke-direct {v2, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$6;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    .line 336
    const-wide/16 v3, 0x12c

    .line 330
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .end local v0           #data:[I
    :cond_0
    return-void

    .line 326
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
    .line 344
    const-string v0, "StandardViewFragmentForPins"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protocolDidReceiveTotalPinCount count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->mProtocol:Lcom/redbear/protocol/RBLProtocol;

    invoke-virtual {v0}, Lcom/redbear/protocol/RBLProtocol;->queryPinAll()V

    .line 348
    :cond_0
    return-void
.end method

.method protected showModeSelect(Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 14
    .parameter "pinInfo"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 647
    const/4 v5, 0x0

    .line 648
    .local v5, modes_area:Landroid/widget/LinearLayout;
    const v6, 0x123ff

    .line 649
    .local v6, modes_area_id:I
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    if-nez v9, :cond_1

    .line 650
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    .line 651
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    const/high16 v10, 0x4f00

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 652
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    new-instance v10, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$8;

    invoke-direct {v10, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$8;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance v5, Landroid/widget/LinearLayout;

    .end local v5           #modes_area:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 663
    .restart local v5       #modes_area:Landroid/widget/LinearLayout;
    const v9, 0x123ff

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 664
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 665
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 667
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 668
    const/4 v9, -0x1

    .line 669
    const/4 v10, -0x2

    .line 667
    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 670
    .local v7, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xc

    .line 671
    const/4 v10, -0x1

    .line 670
    invoke-virtual {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 672
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 675
    iget-object v10, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    .line 676
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    .line 677
    const/4 v13, -0x2

    .line 676
    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 674
    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    .end local v7           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 687
    iget-object v10, p1, Lcom/redbear/redbearbleclient/data/PinInfo;->modes:[I

    array-length v11, v10

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v11, :cond_2

    .line 713
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 714
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0x15e

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 715
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 716
    new-instance v9, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$10;

    invoke-direct {v9, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$10;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 734
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v5           #modes_area:Landroid/widget/LinearLayout;
    .end local v6           #modes_area_id:I
    :cond_0
    return-void

    .line 680
    .restart local v5       #modes_area:Landroid/widget/LinearLayout;
    .restart local v6       #modes_area_id:I
    :cond_1
    iget-object v9, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->select_window:Landroid/widget/RelativeLayout;

    .line 681
    const v10, 0x123ff

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 680
    .end local v5           #modes_area:Landroid/widget/LinearLayout;
    check-cast v5, Landroid/widget/LinearLayout;

    .restart local v5       #modes_area:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 687
    :cond_2
    aget v1, v10, v9

    .line 688
    .local v1, b:I
    invoke-virtual {p0, v1}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getStateStr(I)Ljava/lang/String;

    move-result-object v8

    .line 689
    .local v8, text:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 690
    move v3, v1

    .line 691
    .local v3, btn_mode:I
    iget v4, p1, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    .line 692
    .local v4, btn_pin:I
    invoke-virtual {p0, v8}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->createModeButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 693
    .local v2, btn:Landroid/widget/Button;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    const/4 v12, -0x1

    .line 695
    const/4 v13, -0x2

    .line 693
    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 696
    .local v7, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v12, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;

    invoke-direct {v12, p0, v4, v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$9;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;II)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    .end local v2           #btn:Landroid/widget/Button;
    .end local v3           #btn_mode:I
    .end local v4           #btn_pin:I
    .end local v7           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method protected updateData()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->textRssi:Landroid/widget/TextView;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$7;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;)V

    .line 452
    const-wide/16 v2, 0x32

    .line 441
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_0
    return-void
.end method
