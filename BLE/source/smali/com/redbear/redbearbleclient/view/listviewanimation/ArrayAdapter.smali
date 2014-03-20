.class public abstract Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;-><init>(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p2, items:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 103
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public varargs addAll(I[Ljava/lang/Object;)V
    .locals 3
    .parameter "position"
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    array-length v1, p2

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 115
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 121
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 170
    return-void
.end method

.method public removePositions(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, positions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v1, positionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 156
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 161
    return-void

    .line 157
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    .local v0, position:I
    iget-object v2, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;,"Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/listviewanimation/ArrayAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method
