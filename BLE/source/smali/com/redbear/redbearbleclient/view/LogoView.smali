.class public Lcom/redbear/redbearbleclient/view/LogoView;
.super Landroid/view/View;
.source "LogoView.java"


# instance fields
.field color_logobg:I

.field image_logo:Landroid/graphics/drawable/BitmapDrawable;

.field rect_logo:Landroid/graphics/Rect;

.field view_height:I

.field view_width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/redbear/redbearbleclient/view/LogoView;->color_logobg:I

    .line 33
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/LogoView;->initRes()V

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget v0, p0, Lcom/redbear/redbearbleclient/view/LogoView;->color_logobg:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 95
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected genRects()V
    .locals 7

    .prologue
    .line 58
    const-string v4, "tttt"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "view_height : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    .line 68
    .local v3, logo_width:I
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 69
    .local v0, logo_height:I
    iget v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_width:I

    div-int/lit8 v2, v4, 0x2

    .line 70
    .local v2, logo_target_width:I
    mul-int v4, v0, v2

    div-int v1, v4, v3

    .line 79
    .local v1, logo_target_height:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    .line 80
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    iget v5, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_width:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 81
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    iget v5, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_width:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    iget v5, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_height:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 83
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    iget v5, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_height:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget-object v4, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/redbear/redbearbleclient/view/LogoView;->rect_logo:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 88
    return-void
.end method

.method initRes()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/LogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/LogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020009

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/redbear/redbearbleclient/view/LogoView;->image_logo:Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    iput p1, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_width:I

    .line 45
    iput p2, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_height:I

    .line 46
    const-string v0, "scrrenDesity"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/redbear/redbearbleclient/view/LogoView;->view_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/redbear/redbearbleclient/view/LogoView;->genRects()V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
