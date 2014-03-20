// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.protocol;


public interface IRBLProtocol
{

    public static final int ANALOG = 2;
    public static final char COMMAND_ANALOG_WRITE = 78;
    public static final byte DIGITAL = 1;
    public static final int HIGH = 1;
    public static final int INPUT = 0;
    public static final int LOW = 0;
    public static final char MESSAGE_TYPE_CUSTOM_DATA = 90;
    public static final char MESSAGE_TYPE_PIN_CAPABILITY = 80;
    public static final char MESSAGE_TYPE_PIN_COUNT = 67;
    public static final char MESSAGE_TYPE_PROTOCOL_VERSION = 86;
    public static final char MESSAGE_TYPE_READ_PIN_DATA = 71;
    public static final char MESSAGE_TYPE_READ_PIN_MODE = 77;
    public static final int OUTPUT = 1;
    public static final int PIN_CAPABILITY_ANALOG = 2;
    public static final int PIN_CAPABILITY_DIGITAL = 1;
    public static final int PIN_CAPABILITY_I2C = 127;
    public static final int PIN_CAPABILITY_NONE = 0;
    public static final int PIN_CAPABILITY_PWM = 4;
    public static final int PIN_CAPABILITY_SERVO = 8;
    public static final int PIN_ERROR_INVALID_MODE = 2;
    public static final int PIN_ERROR_INVALID_PIN = 1;
    public static final int PWM = 3;
    public static final int SERVO = 4;
    public static final String STR_ANALOG = "ANALOG";
    public static final String STR_INPUT = "INPUT";
    public static final String STR_OUTPUT = "OUTPUT";
    public static final String STR_PWM = "PWM";
    public static final String STR_SERVO = "SERVO";
    public static final int UNAVAILABLE = 255;

    public abstract void protocolDidReceiveCustomData(int ai[], int i);

    public abstract void protocolDidReceivePinCapability(int i, int j);

    public abstract void protocolDidReceivePinData(int i, int j, int k);

    public abstract void protocolDidReceivePinMode(int i, int j);

    public abstract void protocolDidReceiveProtocolVersion(int i, int j, int k);

    public abstract void protocolDidReceiveTotalPinCount(int i);
}
