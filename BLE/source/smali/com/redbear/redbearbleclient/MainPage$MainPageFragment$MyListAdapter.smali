.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;
.super Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;
.source "MainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter",
        "<",
        "Lcom/redbear/redbearbleclient/MainPage$Device;",
        ">;"
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbear/redbearbleclient/MainPage$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method public constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbear/redbearbleclient/MainPage$Device;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/redbear/redbearbleclient/MainPage$Device;>;"
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 402
    invoke-direct {p0, p3}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;-><init>(Ljava/util/List;)V

    .line 403
    iput-object p2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->mContext:Landroid/content/Context;

    .line 404
    iget-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 405
    iput-object p3, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->items:Ljava/util/ArrayList;

    .line 406
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 410
    iget-object v7, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 412
    .local v1, mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;
    iget-object v7, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$MyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030005

    .line 413
    const/4 v9, 0x0

    .line 412
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 415
    .local v6, v:Landroid/view/View;
    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 417
    .local v3, mName:Landroid/widget/TextView;
    iget-object v7, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const v7, 0x7f090013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 419
    check-cast v2, Landroid/widget/TextView;

    .line 422
    .local v2, mLocalName:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Local Name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 426
    .local v0, mAddress:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Address: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v7, 0x7f090011

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 430
    .local v4, mRssi:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Rssi: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->rssi:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const v7, 0x7f090010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 434
    .local v5, mUddi:Landroid/widget/TextView;
    iget-object v7, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->uuids:[Landroid/os/ParcelUuid;

    if-nez v7, :cond_0

    .line 435
    const-string v7, "uuid: null"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_0
    return-object v6

    .line 437
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/redbear/redbearbleclient/MainPage$Device;->uuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
