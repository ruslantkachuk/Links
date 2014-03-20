.class Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StandardViewFragmentForPins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field analog:Landroid/widget/TextView;

.field digitol:Landroid/widget/Switch;

.field mode:Landroid/widget/Button;

.field pin:Landroid/widget/TextView;

.field servo:Landroid/widget/SeekBar;

.field final synthetic this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;


# direct methods
.method constructor <init>(Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter$ViewHolder;->this$1:Lcom/redbear/redbearbleclient/StandardViewFragmentForPins$PinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
