.class public abstract Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapterDecorator.java"


# instance fields
.field protected final mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

.field private mListView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "baseAdapter"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    .line 39
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAbsListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 129
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 134
    return-void
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    .line 56
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;

    invoke-virtual {v0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "listView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    .line 48
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;

    invoke-virtual {v0, p1}, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->setListView(Landroid/widget/AbsListView;)V

    .line 51
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 139
    return-void
.end method
