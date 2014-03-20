.class public interface abstract Lcom/redbear/protocol/IRBLProtocol;
.super Ljava/lang/Object;
.source "IRBLProtocol.java"


# static fields
.field public static final ANALOG:I = 0x2

.field public static final COMMAND_ANALOG_WRITE:C = 'N'

.field public static final DIGITAL:B = 0x1t

.field public static final HIGH:I = 0x1

.field public static final INPUT:I = 0x0

.field public static final LOW:I = 0x0

.field public static final MESSAGE_TYPE_CUSTOM_DATA:C = 'Z'

.field public static final MESSAGE_TYPE_PIN_CAPABILITY:C = 'P'

.field public static final MESSAGE_TYPE_PIN_COUNT:C = 'C'

.field public static final MESSAGE_TYPE_PROTOCOL_VERSION:C = 'V'

.field public static final MESSAGE_TYPE_READ_PIN_DATA:C = 'G'

.field public static final MESSAGE_TYPE_READ_PIN_MODE:C = 'M'

.field public static final OUTPUT:I = 0x1

.field public static final PIN_CAPABILITY_ANALOG:I = 0x2

.field public static final PIN_CAPABILITY_DIGITAL:I = 0x1

.field public static final PIN_CAPABILITY_I2C:I = 0x7f

.field public static final PIN_CAPABILITY_NONE:I = 0x0

.field public static final PIN_CAPABILITY_PWM:I = 0x4

.field public static final PIN_CAPABILITY_SERVO:I = 0x8

.field public static final PIN_ERROR_INVALID_MODE:I = 0x2

.field public static final PIN_ERROR_INVALID_PIN:I = 0x1

.field public static final PWM:I = 0x3

.field public static final SERVO:I = 0x4

.field public static final STR_ANALOG:Ljava/lang/String; = "ANALOG"

.field public static final STR_INPUT:Ljava/lang/String; = "INPUT"

.field public static final STR_OUTPUT:Ljava/lang/String; = "OUTPUT"

.field public static final STR_PWM:Ljava/lang/String; = "PWM"

.field public static final STR_SERVO:Ljava/lang/String; = "SERVO"

.field public static final UNAVAILABLE:I = 0xff


# virtual methods
.method public abstract protocolDidReceiveCustomData([II)V
.end method

.method public abstract protocolDidReceivePinCapability(II)V
.end method

.method public abstract protocolDidReceivePinData(III)V
.end method

.method public abstract protocolDidReceivePinMode(II)V
.end method

.method public abstract protocolDidReceiveProtocolVersion(III)V
.end method

.method public abstract protocolDidReceiveTotalPinCount(I)V
.end method
