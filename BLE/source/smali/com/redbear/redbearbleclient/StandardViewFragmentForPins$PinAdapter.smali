.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;
.super Landroid/widget/BaseAdapter;
.source "StandardViewFragmentForPins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field data:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/redbear/redbearbleclient/data/PinInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDigitolValueChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mInflater:Landroid/view/LayoutInflater;

.field mModeClickListener:Landroid/view/View$OnClickListener;

.field mServoChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;


# direct methods
.method public constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/redbear/redbearbleclient/data/PinInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p3, data:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/redbear/redbearbleclient/data/PinInfo;>;"
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    .line 568
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mDigitolValueChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 586
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mServoChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 620
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$3;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mModeClickListener:Landroid/view/View$OnClickListener;

    .line 464
    iput-object p3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    .line 465
    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->context:Landroid/content/Context;

    .line 466
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 467
    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    return-object v0
.end method

.method private setModeAction(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 5
    .parameter "holder"
    .parameter "pinInfo"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 528
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 529
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 532
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 534
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 537
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 538
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    if-ne v0, v3, :cond_0

    .line 539
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 545
    :pswitch_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 546
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 547
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    if-ne v0, v3, :cond_1

    .line 548
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 552
    :goto_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    .line 553
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mDigitolValueChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 556
    :pswitch_2
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :pswitch_3
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 562
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 563
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mServoChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 484
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "contentView"
    .parameter "arg2"

    .prologue
    .line 490
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 491
    .local v2, key:I
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 493
    .local v3, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    const/4 v1, 0x0

    .line 494
    .local v1, holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 495
    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    .line 496
    const/4 v6, 0x0

    .line 495
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 497
    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;

    .end local v1           #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V

    .line 498
    .restart local v1       #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    const v4, 0x7f09001a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->pin:Landroid/widget/TextView;

    .line 499
    const v4, 0x7f09001b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    .line 501
    const v4, 0x7f09001e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 500
    iput-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    .line 503
    const v4, 0x7f09001d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 502
    iput-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    .line 505
    const v4, 0x7f09001c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 504
    iput-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    .line 506
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 511
    :goto_0
    const-string v0, ""

    .line 512
    .local v0, fix:Ljava/lang/String;
    iget v4, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 513
    const-string v0, "0"

    .line 515
    :cond_0
    iget-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->pin:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pin:\t"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;

    iget v6, v3, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    invoke-virtual {v5, v6}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins;->getStateStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 518
    iget-object v4, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    iget-object v5, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->mModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-direct {p0, v1, v3}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;->setModeAction(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;Lcom/redbear/redbearbleclient/data/PinInfo;)V

    .line 520
    return-object p2

    .line 508
    .end local v0           #fix:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    check-cast v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
    goto :goto_0
.end method
