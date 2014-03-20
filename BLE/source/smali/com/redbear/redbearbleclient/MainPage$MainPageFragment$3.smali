.class Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez p3, :cond_0

    .line 235
    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    iget-object v2, v2, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->mArrayList:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbear/redbearbleclient/MainPage$Device;

    .line 237
    .local v1, mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-virtual {v2}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 238
    const-class v3, Lcom/redbear/redbearbleclient/StandardView;

    .line 237
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-virtual {v2}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v2, p0, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment$3;->this$1:Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;

    invoke-virtual {v2}, Lcom/redbear/redbearbleclient/MainPage$MainPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 242
    const v3, 0x7f040002

    .line 243
    const v4, 0x7f040005

    .line 241
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDevice:Lcom/redbear/redbearbleclient/MainPage$Device;
    :cond_0
    return-void
.end method
