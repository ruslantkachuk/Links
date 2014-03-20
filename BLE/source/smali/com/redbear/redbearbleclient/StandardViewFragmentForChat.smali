.class public Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;
.super Landroid/app/Fragment;
.source "StandardViewFragmentForChat.java"


# static fields
.field public static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field btnSend:Landroid/widget/Button;

.field conn:Landroid/content/ServiceConnection;

.field editInput:Landroid/widget/EditText;

.field editOutput:Landroid/widget/EditText;

.field isFirst:Z

.field mBearService:Lcom/redbear/RedBearService/RedBearService;

.field mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

.field mHandler:Landroid/os/Handler;

.field final mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

.field mSendClick:Landroid/view/View$OnClickListener;

.field textName:Landroid/widget/TextView;

.field textRssi:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textName:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textRssi:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editOutput:Landroid/widget/EditText;

    .line 38
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editInput:Landroid/widget/EditText;

    .line 40
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->btnSend:Landroid/widget/Button;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->isFirst:Z

    .line 56
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 162
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mSendClick:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->conn:Landroid/content/ServiceConnection;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/redbear/redbearbleclient/MainPage$Device;)V
    .locals 1
    .parameter "mDevice"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textName:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textRssi:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editOutput:Landroid/widget/EditText;

    .line 38
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editInput:Landroid/widget/EditText;

    .line 40
    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->btnSend:Landroid/widget/Button;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->isFirst:Z

    .line 56
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mIScanDeviceListener:Lcom/redbear/RedBearService/IRedBearServiceEventListener;

    .line 162
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mSendClick:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat$4;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->conn:Landroid/content/ServiceConnection;

    .line 53
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 54
    return-void
.end method


# virtual methods
.method protected deviceConnectStateChange(Ljava/lang/String;I)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Connected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-nez p2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Disconnected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

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
    .line 139
    if-nez p3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v0, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iput p2, v0, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 142
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textRssi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rssi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v1, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/redbear/RedBearService/RedBearService;->disconnectDevice(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 183
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textName:Landroid/widget/TextView;

    .line 187
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textRssi:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editInput:Landroid/widget/EditText;

    .line 191
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->editOutput:Landroid/widget/EditText;

    .line 193
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->btnSend:Landroid/widget/Button;

    .line 195
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->btnSend:Landroid/widget/Button;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mSendClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    const/4 v2, 0x0

    iput v2, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    .line 202
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->textRssi:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rssi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;

    iget v3, v3, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->disconnectDevice()V

    .line 228
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 229
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.redbear.RedBearService.RedBearService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForChat;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 216
    return-void
.end method
