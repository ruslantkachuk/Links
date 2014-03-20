.class public Lcom/redbear/protocol/RBLProtocol;
.super Ljava/lang/Object;
.source "RBLProtocol.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field address:Ljava/lang/String;

.field mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

.field mRedBearService:Lcom/redbear/RedBearService/RedBearService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "RBLProtocol"

    iput-object v0, p0, Lcom/redbear/protocol/RBLProtocol;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/redbear/protocol/RBLProtocol;->address:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public analogWrite(II)V
    .locals 4
    .parameter "pin"
    .parameter "value"

    .prologue
    .line 173
    const-string v1, "RBLProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RBLPRotocol: analogWrite value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x3

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    const/4 v1, 0x2

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 175
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 177
    return-void
.end method

.method public digitalRead(I)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 116
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: digitalRead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x2

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 120
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 122
    return-void
.end method

.method public digitalWrite(II)V
    .locals 3
    .parameter "pin"
    .parameter "value"

    .prologue
    .line 125
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: digitalWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x3

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    const/4 v1, 0x2

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 129
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 132
    return-void
.end method

.method public parseData([I)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x3

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, i:I
    array-length v3, p1

    .local v3, length:I
    move v1, v0

    .line 41
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 98
    return-void

    .line 42
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v5, p1, v1

    .line 43
    .local v5, type:I
    const-string v6, "RBLProtocol"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 47
    .end local v1           #i:I
    .restart local v0       #i:I
    :sswitch_0
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_1

    .line 48
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v7, p1, v0

    .line 49
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v8, p1, v1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v9, p1, v0

    .line 48
    invoke-interface {v6, v7, v8, v9}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceiveProtocolVersion(III)V

    goto :goto_0

    .line 55
    .end local v1           #i:I
    .restart local v0       #i:I
    :sswitch_1
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_1

    .line 56
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v7, p1, v0

    invoke-interface {v6, v7}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceiveTotalPinCount(I)V

    goto :goto_0

    .line 62
    .end local v1           #i:I
    .restart local v0       #i:I
    :sswitch_2
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_1

    .line 63
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v7, p1, v0

    .line 64
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v8, p1, v1

    .line 63
    invoke-interface {v6, v7, v8}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceivePinCapability(II)V

    move v1, v0

    .line 66
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 69
    .end local v1           #i:I
    .restart local v0       #i:I
    :sswitch_3
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_2

    .line 70
    add-int/lit8 v6, v3, -0x1

    new-array v4, v6, [I

    .line 71
    .local v4, result:[I
    move v2, v0

    .local v2, index:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 74
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    .line 75
    add-int/lit8 v7, v3, -0x1

    .line 74
    invoke-interface {v6, v4, v7}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceiveCustomData([II)V

    .line 77
    .end local v2           #index:I
    .end local v4           #result:[I
    :cond_2
    move v0, v3

    move v1, v0

    .line 78
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 72
    .end local v1           #i:I
    .restart local v0       #i:I
    .restart local v2       #index:I
    .restart local v4       #result:[I
    :cond_3
    add-int/lit8 v6, v2, -0x1

    aget v7, p1, v2

    aput v7, v4, v6

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v2           #index:I
    .end local v4           #result:[I
    :sswitch_4
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_1

    .line 82
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v7, p1, v0

    .line 83
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v8, p1, v1

    .line 82
    invoke-interface {v6, v7, v8}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceivePinMode(II)V

    move v1, v0

    .line 85
    .end local v0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_0

    .line 88
    .end local v1           #i:I
    .restart local v0       #i:I
    :sswitch_5
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    if-eqz v6, :cond_1

    .line 89
    aget v6, p1, v10

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_4

    aget v6, p1, v10

    if-gez v6, :cond_5

    .line 90
    :cond_4
    const-string v6, "RBLProtocol"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "data[4]: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    aget v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5
    iget-object v6, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v7, p1, v0

    .line 93
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v8, p1, v1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v9, p1, v0

    .line 92
    invoke-interface {v6, v7, v8, v9}, Lcom/redbear/protocol/IRBLProtocol;->protocolDidReceivePinData(III)V

    goto/16 :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x47 -> :sswitch_5
        0x4d -> :sswitch_4
        0x50 -> :sswitch_2
        0x56 -> :sswitch_0
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public queryPinAll()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: queryPinAll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x3

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 137
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 140
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0xdt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public queryPinCapability(I)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 158
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: queryPinCapability"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x2

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 160
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 163
    return-void
.end method

.method public queryPinMode(I)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 166
    const-string v1, "RBLProtocol"

    const-string v2, "RBLPRotocol: queryPinMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x2

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 168
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 170
    return-void
.end method

.method public queryProtocolVersion()V
    .locals 3

    .prologue
    .line 143
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: queryProtocolVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x1

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput-char v2, v0, v1

    .line 146
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 148
    return-void
.end method

.method public queryTotalPinCount()V
    .locals 3

    .prologue
    .line 151
    const-string v1, "RBLProtocol"

    const-string v2, "RBLProtocol: queryTotalPinCount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x1

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x43

    aput-char v2, v0, v1

    .line 153
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 155
    return-void
.end method

.method public sendCustomData([II)V
    .locals 6
    .parameter "data"
    .parameter "length"

    .prologue
    .line 187
    add-int/lit8 v4, p2, 0x2

    new-array v0, v4, [C

    .line 188
    .local v0, buf:[C
    const/4 v4, 0x0

    const/16 v5, 0x5a

    aput-char v5, v0, v4

    .line 189
    const/4 v4, 0x1

    int-to-char v5, p2

    aput-char v5, v0, v4

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, j:I
    const/4 v1, 0x2

    .local v1, i:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 196
    return-void

    .line 192
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    aget v4, p1, v3

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_0
.end method

.method public servoWrite(II)V
    .locals 4
    .parameter "pin"
    .parameter "value"

    .prologue
    .line 180
    const-string v1, "RBLProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RBLPRotocol: servoWrite value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x3

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    const/4 v1, 0x2

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 182
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 184
    return-void
.end method

.method public setIRBLProtocol(Lcom/redbear/protocol/IRBLProtocol;)V
    .locals 0
    .parameter "mIrblProtocol"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/redbear/protocol/RBLProtocol;->mIrblProtocol:Lcom/redbear/protocol/IRBLProtocol;

    .line 31
    return-void
.end method

.method public setPinMode(II)V
    .locals 3
    .parameter "pin"
    .parameter "mode"

    .prologue
    .line 107
    const-string v1, "RBLProtocol"

    const-string v2, "RBLPRotocol: setPinMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x3

    new-array v0, v1, [C

    const/4 v1, 0x0

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/4 v1, 0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    const/4 v1, 0x2

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 111
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Lcom/redbear/protocol/RBLProtocol;->write([C)V

    .line 113
    return-void
.end method

.method public setmIRedBearService(Lcom/redbear/RedBearService/RedBearService;)V
    .locals 0
    .parameter "mRedBearService"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/redbear/protocol/RBLProtocol;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    .line 35
    return-void
.end method

.method protected write([C)V
    .locals 2
    .parameter "data"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/redbear/protocol/RBLProtocol;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/redbear/protocol/RBLProtocol;->mRedBearService:Lcom/redbear/RedBearService/RedBearService;

    iget-object v1, p0, Lcom/redbear/protocol/RBLProtocol;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/redbear/RedBearService/RedBearService;->writeValue(Ljava/lang/String;[C)V

    .line 104
    :cond_0
    return-void
.end method
