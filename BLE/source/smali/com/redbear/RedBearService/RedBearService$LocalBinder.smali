.class public Lcom/redbear/RedBearService/RedBearService$LocalBinder;
.super Landroid/os/Binder;
.source "RedBearService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/RedBearService/RedBearService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbear/RedBearService/RedBearService;


# direct methods
.method public constructor <init>(Lcom/redbear/RedBearService/RedBearService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/redbear/RedBearService/RedBearService$LocalBinder;->this$0:Lcom/redbear/RedBearService/RedBearService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/redbear/RedBearService/RedBearService;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/redbear/RedBearService/RedBearService$LocalBinder;->this$0:Lcom/redbear/RedBearService/RedBearService;

    return-object v0
.end method
