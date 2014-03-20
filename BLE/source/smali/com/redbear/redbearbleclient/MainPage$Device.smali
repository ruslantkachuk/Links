.class public Lcom/redbear/redbearbleclient/MainPage$Device;
.super Ljava/lang/Object;
.source "MainPage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbear/redbearbleclient/MainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x52ba2b74bf7a1bbcL


# instance fields
.field public address:Ljava/lang/String;

.field public bondState:I

.field public name:Ljava/lang/String;

.field public rssi:I

.field public scanReadData:[B

.field public uuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
