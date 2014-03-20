.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;
.super Landroid/widget/BaseAdapter;
.source "StandardViewFragmentForPinsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;,
        Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;


# direct methods
.method public constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;Landroid/content/Context;Landroid/util/SparseArray;)V
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
    .line 519
    .local p3, data:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/redbear/redbearbleclient/data/PinInfo;>;"
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    .line 630
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$1;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mDigitolValueChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 686
    new-instance v0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;

    invoke-direct {v0, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$2;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mModeClickListener:Landroid/view/View$OnClickListener;

    .line 520
    iput-object p3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    .line 521
    iput-object p2, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->context:Landroid/content/Context;

    .line 522
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 523
    return-void
.end method

.method static synthetic access$0(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    return-object v0
.end method

.method private setModeAction(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;Lcom/redbear/redbearbleclient/data/PinInfo;)V
    .locals 6
    .parameter "holder"
    .parameter "pinInfo"

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 584
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 587
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 589
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 591
    :pswitch_0
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 592
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 593
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    const/high16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 594
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    if-ne v0, v3, :cond_0

    .line 595
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 602
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 603
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 604
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    if-ne v0, v3, :cond_1

    .line 605
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 609
    :goto_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    .line 610
    iget-object v1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mDigitolValueChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 613
    :pswitch_2
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :pswitch_3
    iget v0, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 619
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 623
    :goto_2
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 624
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/redbear/redbearbleclient/data/PinInfo;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 625
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;

    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$SeekBarChange;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_0

    .line 621
    :cond_2
    iget-object v0, p1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    .line 589
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
    .line 527
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 530
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
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 540
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "contentView"
    .parameter "arg2"

    .prologue
    .line 546
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbear/redbearbleclient/data/PinInfo;

    .line 548
    .local v2, pinInfo:Lcom/redbear/redbearbleclient/data/PinInfo;
    const/4 v1, 0x0

    .line 549
    .local v1, holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 550
    iget-object v3, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030008

    .line 551
    const/4 v5, 0x0

    .line 550
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 552
    new-instance v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;

    .end local v1           #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;-><init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;)V

    .line 553
    .restart local v1       #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
    const v3, 0x7f09001a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->pin:Landroid/widget/TextView;

    .line 554
    const v3, 0x7f09001b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    .line 556
    const v3, 0x7f09001e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 555
    iput-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->servo:Landroid/widget/SeekBar;

    .line 558
    const v3, 0x7f09001d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 557
    iput-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->analog:Landroid/widget/TextView;

    .line 560
    const v3, 0x7f09001c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 559
    iput-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->digitol:Landroid/widget/Switch;

    .line 561
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 566
    :goto_0
    const-string v0, ""

    .line 567
    .local v0, fix:Ljava/lang/String;
    iget v3, v2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 568
    const-string v0, "0"

    .line 570
    :cond_0
    iget-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->pin:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pin:\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/redbear/redbearbleclient/data/PinInfo;->pin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->this$0:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;

    iget v5, v2, Lcom/redbear/redbearbleclient/data/PinInfo;->mode:I

    invoke-virtual {v4, v5}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx;->getStateStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 573
    iget-object v3, v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;->mode:Landroid/widget/Button;

    iget-object v4, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->mModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    invoke-direct {p0, v1, v2}, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter;->setModeAction(Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;Lcom/redbear/redbearbleclient/data/PinInfo;)V

    .line 575
    return-object p2

    .line 563
    .end local v0           #fix:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
    check-cast v1, Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/redbear/redbearbleclient/StandardViewFragmentForPinsEx$PinAdapter$ViewHolder;
    goto :goto_0
.end method
